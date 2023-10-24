class QuizzesController < ApplicationController

  def index
    @category = TestCategory.find(params[:category_id])
    @quizzes = @category.quizzes.includes(:quiz_choices)
  end
  
  def calculate_score
    #UserQuizAnswerに保存
    answers = params[:answers]
    correct_count = 0

    #（正解の選択肢を取得）
    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)
    #（正解数を計算）
    answers.each do |quiz_id, choice_id|
      if correct_choices[quiz_id.to_i]&.id.to_s == choice_id
        correct_count += 1
      end
      UserQuizAnswer.create(user_id: current_user.id, quiz_id: quiz_id, quiz_choice_id: choice_id)
    end

    #点数を計算
    total_quizzes = answers.keys.length
    total_score = (correct_count.to_f * 100) / total_quizzes

    #QuizResultに保存
    quiz_result = QuizResult.create(
      test_category_id: params[:category_id],
      user_id: current_user.id,
      score: total_score,
      is_passed: total_score >= 70
    )
    
    if quiz_result.save
    
      redirect_to category_quiz_path(category_id: params[:category_id], id: quiz_result.id)
    else
      flash.now[:error] = "恐れ入りますが、再度後ご受検ください"
      render :index, status: :unprocessable_entity
    end
  end

  def show #クイズの結果を表示
    @quiz_result = QuizResult.find(params[:id])
    @pass_status = @quiz_result.is_passed ? '合格' : '不合格'
    @category = TestCategory.find(@quiz_result.test_category_id)
  end

end
  