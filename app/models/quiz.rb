class Quiz < ApplicationRecord
  belongs_to :test_category
  has_many :quiz_choices
  has_many :user_quiz_answers
end
