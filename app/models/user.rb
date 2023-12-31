class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :user_quiz_answers, dependent: :destroy
  has_many :quizzes, through: :user_quiz_answers
  has_many :quiz_choices, through: :user_quiz_answers
  has_many :quiz_results, dependent: :destroy
  has_many :souvenir_photos, through: :test_comments
  has_many :user_review_answers, dependent: :destroy
  has_many :reviews, through: :user_review_answers
  has_many :test_comments, dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :password, length: { minimum: 5 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :remember_me_token, uniqueness: true, allow_nil: true

  # crud_menus.html.erb用のメソッド
  def own?(object)
    id == object.user_id
  end

  # passed_lists用のメソッド
  def passed_quizzes
    quiz_results.includes(:test_category).where(is_passed: true)
  end

  # reviews/create用のメソッド
  def already_reviewed?(category)
    UserReviewAnswer.joins(:review).where(user_id: id, reviews: { test_category_id: category.id }).exists?
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[avatar created_at id name updated_at]
  end
end
