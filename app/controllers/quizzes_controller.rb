class QuizzesController < ApplicationController

  def index
    @category = TestCategory.find(params[:category_id])
    @quizzes = @category.quizzes.includes(:quiz_choices)
  end
  
  def calculate_score
  
    answers = params[:answers]
    correct_count = 0

    #正解の選択肢を取得
    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)

    #正解数を計算
    answers.each do |quiz, choice|
      if correct_choices[quiz.to_i]&.id.to_s == choice
        correct_count += 1
      end
    #ユーザーが選んだ回答をUserQuizAnswerに保存
      UserQuizAnswer.create(
        user_id: current_user.id, 
        quiz_id: quiz, 
        quiz_choice_id: choice
      )
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
      flash.now[:error] = t('.take_test_again')
      render :index, status: :unprocessable_entity
    end
  end

  def show #クイズの結果を表示
    @quiz_result = QuizResult.find(params[:id])
    @pass_status = @quiz_result.is_passed ? t('.passed') : t('.failed')
    @category = TestCategory.find(@quiz_result.test_category_id)
    @quizzes = Quiz.includes(:quiz_choices).where(test_category_id: @quiz_result.test_category_id)

    @user_answers = {}
    @explanations = {}
    
    @quizzes.each do |quiz|
      user_answer = quiz.user_quiz_answers.find_by(user_id: current_user.id)
      @user_answers[quiz.id] = user_answer.quiz_choice_id if user_answer
      
      correct_choice = quiz.quiz_choices.find_by(correct_answer: true)
      @explanations[quiz.id] = correct_choice.explanation if correct_choice
    end
  end

end
  