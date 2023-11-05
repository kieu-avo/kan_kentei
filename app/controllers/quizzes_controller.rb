class QuizzesController < ApplicationController
  skip_before_action :require_login, only: %i[sample_quiz]
  before_action :set_category, only: %i[index calculate_score show]
  before_action :set_quiz, only: %i[index calculate_score show]

  def index; end

  def calculate_score
    answers = params[:answers] || {}
    count_correct = 0
    count_quizzes = Quiz.total_by_category(@category.id)

    # 未選択の問題があった場合の処理
    if answers.empty? || answers.keys.size < count_quizzes
      flash.now[:error] = t('.blank')
      @user_answers = answers
      render :index, status: :unprocessable_entity and return
    end

    # 正解の選択肢を取得
    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)

    # 正解数を計算
    answers.each do |quiz, choice|
      count_correct += 1 if correct_choices[quiz.to_i]&.id.to_s == choice
      # ユーザーが選んだ回答をUserQuizAnswerに保存
      UserQuizAnswer.create(
        user_id: current_user.id,
        quiz_id: quiz,
        quiz_choice_id: choice
      )
    end

    # 点数を計算
    total_quizzes = answers.keys.length
    total_score = (count_correct.to_f * 100) / total_quizzes

    # QuizResultに保存
    quiz_result = QuizResult.create(
      test_category_id: params[:category_id],
      user_id: current_user.id,
      score: total_score,
      is_passed: total_score >= 70
    )

    return unless quiz_result.save

    redirect_to category_quiz_path(category_id: params[:category_id], id: quiz_result.id)
  end

  # クイズの結果を表示
  def show
    @quiz_result = current_user.quiz_results.find(params[:id])
    @pass_status = @quiz_result.is_passed ? t('.passed') : t('.failed')
    @category = TestCategory.find(@quiz_result.test_category_id)
    @quizzes = Quiz.includes(:quiz_choices).where(test_category_id: @quiz_result.test_category_id)

    @user_quiz_answers = UserQuizAnswer.where(user_id: current_user.id, quiz_id: @quizzes.pluck(:id)).index_by(&:quiz_id)
    @explanations = QuizChoice.where(quiz_id: @quizzes.pluck(:id), correct_answer: true).index_by(&:quiz_id)
  end

  def sample_quiz
    @sample_category = TestCategory.find_by(title: "sample")
    @sample_quiz = @sample_category.quizzes.includes(:quiz_choices) if @sample_category
  end

  private

  def set_category
    @category = TestCategory.find(params[:category_id])
  end

  def set_quiz
    @quizzes = @category.quizzes.includes(:quiz_choices)
  end
end
