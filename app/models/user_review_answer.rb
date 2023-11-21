class UserReviewAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :user_id, uniqueness: { scope: :review_id }

  def self.count_user_answer(category)
    joins(:review)
    .where(review: { test_category_id: category.id })
    .select(:user_id)
    .distinct.count
  end
end

