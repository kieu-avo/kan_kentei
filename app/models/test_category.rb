class TestCategory < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :quiz_results, dependent: :destroy
end
