class QuizResult < ApplicationRecord
  belongs_to :test_category
  belongs_to :user

  scope :taken_today, ->(user) { where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).where(user_id: user.id).where(is_passed: true) }

  # quizzes/create用のメソッド
  def self.calculate_and_create_result(category_id:, user_id:, answers:)
    count_correct = 0
    category = TestCategory.find(category_id)
    count_quizzes = Quiz.total_by_category(category.id)

    # 未選択の問題があった場合の処理
    return nil if answers.empty? || answers.keys.size < count_quizzes

    # 正解の選択肢を取得
    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)

    # 正解数を計算
    answers.each do |quiz, choice|
      count_correct += 1 if correct_choices[quiz.to_i]&.id.to_s == choice
      # ユーザーが選んだ回答をUserQuizAnswerに保存
      UserQuizAnswer.create(
        user_id:,
        quiz_id: quiz,
        quiz_choice_id: choice
      )
    end

    # 点数を計算
    total_quizzes = answers.keys.length
    total_score = (count_correct.to_f * 100) / total_quizzes

    # QuizResultに保存
    create(
      test_category_id: category_id,
      user_id:,
      score: total_score,
      is_passed: total_score >= 70
    )
  end

  # quizzes/show用のメソッド(以下2つ)
  def related_quizzes
    test_category.quizzes.includes(:quiz_choices)
  end

  def user_quiz_answers_with_explanations(user)
    quizzes = related_quizzes
    quiz_ids = quizzes.map(&:id)
    user_answers = UserQuizAnswer.where(user_id: user.id, quiz_id: quiz_ids).index_by(&:quiz_id)
    explanations = QuizChoice.where(quiz_id: quiz_ids, correct_answer: true).index_by(&:quiz_id)
    { user_answers:, explanations: }
  end
end
