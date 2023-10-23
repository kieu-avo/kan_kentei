class QuizzesController < ApplicationController

  def index
    @category = TestCategory.find(params[:category_id])
    @quizzes = @category.quizzes.includes(:quiz_choices)
  end
  
  def calculate_score
    #UserQuizAnswerに保存
    answers = params[:answers]
    correct_count = 0

    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)

    answers.each do |quiz_id, choice_id|
      if correct_choices[quiz_id]&.id.to_s == choice_id
        correct_count += 1
      end
      UserQuizAnswer.create(user_id: current_user.id, quiz_id: quiz_id, quiz_choice_id: choice_id)
    end
    #点数を計算
    total_quizzes = answers.keys.length
    total_score = (correct_count.to_f * 100) / total_quizzes
    total_score.to_i
    
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

  #クイズの結果を表示
  def show 
    @quiz_result = QuizResult.find(params[:id])
    @pass_status = @quiz_result.is_passed ? '合格' : '不合格'
    @category = TestCategory.find(@quiz_result.test_category_id)
  end

end
  