class UserReviewAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :review

  #↓レビュー画面が完成したらコメントアウトを外す
  #validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  #validates :user_id, uniqueness: { scope: :review_id }

end
