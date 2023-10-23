class QuizResult < ApplicationRecord
  belongs_to :test_category
  belongs_to :user
end
