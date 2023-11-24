class QuizzesController < ApplicationController
  skip_before_action :require_login, only: %i[sample_quiz]
  before_action :set_category, only: %i[index calculate_score show]
  before_action :set_quiz, only: %i[index calculate_score show]

  def index
    if QuizResult.taken_today(current_user).exists?
      redirect_to category_reviews_path(@category), error: t('.limit')
    else
      render :index, status: :unprocessable_entity
    end
  end

  def calculate_score
    answers = params[:answers] || {}
    
    quiz_result = QuizResult.calculate_and_create_result(
      category_id: params[:category_id],
      user_id: current_user.id,
      answers:
    )

    handle_quiz_result(answers, quiz_result)
  end

  # クイズの結果を表示
  def show
    @quiz_result = current_user.quiz_results.find(params[:id])
    @pass_status = @quiz_result.is_passed ? t('.passed') : t('.failed')
    @category = @quiz_result.test_category
    @quizzes = @quiz_result.related_quizzes

    @user_quiz_answers, @explanations = @quiz_result.user_quiz_answers_with_explanations(current_user).values_at(:user_answers, :explanations)
  end

  def sample_quiz
    @sample_category = TestCategory.find_by(title: "サンプル問題(ベトナム級)")
    @sample_quiz = @sample_category.quizzes.includes(:quiz_choices) if @sample_category
  end

  private

  def set_category
    @category = TestCategory.find(params[:category_id])
  end

  def set_quiz
    @quizzes = @category.quizzes.includes(:quiz_choices)
  end

 

  def handle_quiz_result(answers, quiz_result)
    @user_answers = answers
    if quiz_result.nil?
      flash.now[:error] = t('.blank')
      render :index, status: :unprocessable_entity and return
    elsif quiz_result.persisted?
      redirect_to category_quiz_path(category_id: params[:category_id], id: quiz_result.id)
    else
      flash.now[:error] = quiz_result.errors.full_messages.to_sentence
      render :index, status: :unprocessable_entity and return
    end
  end
end
