class QuizChoice < ApplicationRecord
  belongs_to :quiz
  has_many :user_quiz_answers, dependent: :destroy
end
