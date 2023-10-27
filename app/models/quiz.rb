class Quiz < ApplicationRecord
  belongs_to :test_category
  has_many :quiz_choices, dependent: :destroy
  has_many :user_quiz_answers, dependent: :destroy
end
