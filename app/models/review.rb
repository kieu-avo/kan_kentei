class Review < ApplicationRecord
  belongs_to :test_category
  has_many :user_review_answer
end
