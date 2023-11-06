class TestCategory < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :quiz_results, dependent: :destroy
  has_many :souvenir_photos, dependent: :destroy
  has_many :test_comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
