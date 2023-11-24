class QuizResult < ApplicationRecord
  belongs_to :test_category
  belongs_to :user

  scope :taken_today, ->(user) { where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).where(user_id: user.id).where(is_passed: true) }

  # quizzes/create用のメソッド ここから
  def self.calculate_and_create_result(category_id:, user_id:, answers:)
    return nil if invalid_answers?(answers, category_id)

    count_correct = count_correct_answers(answers)
    save_user_answers(user_id, answers)
    calculate_score_and_save(category_id, user_id, count_correct, answers.keys.length)
  end

  def self.invalid_answers?(answers, category_id)
    count_quizzes = Quiz.total_by_category(category_id)
    answers.empty? || answers.keys.size < count_quizzes
  end

  def self.count_correct_answers(answers)
    correct_choices = QuizChoice.where(quiz_id: answers.keys, correct_answer: true).index_by(&:quiz_id)
    answers.to_unsafe_h.count { |quiz, choice| correct_choices[quiz.to_i]&.id.to_s == choice }
  end

  def self.save_user_answers(user_id, answers)
    answers.each do |quiz, choice|
      UserQuizAnswer.create(user_id:, quiz_id: quiz, quiz_choice_id: choice)
    end
  end

  def self.calculate_score_and_save(category_id, user_id, count_correct, total_quizzes)
    total_score = (count_correct.to_f * 100) / total_quizzes
    create(
      test_category_id: category_id,
      user_id:,
      score: total_score,
      is_passed: total_score >= 70
    )
  end
  # ここまで

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
