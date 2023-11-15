class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :user_quiz_answers
  has_many :quizzes, through: :user_quiz_answers
  has_many :quiz_choices, through: :user_quiz_answers
  has_many :quiz_results
  has_many :souvenir_photos, through: :test_comments
  has_many :user_review_answers, dependent: :destroy
  has_many :reviews, through: :user_review_answers
  has_many :test_comments, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
  #has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 5 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  #crud_menus.html.erb用のメソッド
  def own?(object)
    id == object.user_id
  end

  #passed_lists用のメソッド
  def passed_quizzes
    quiz_results.includes(:test_category).where(is_passed: true)
  end

  def already_reviewed?(category)
    UserReviewAnswer.joins(:review).where(user_id: id, reviews: { test_category_id: category.id }).exists?
  end

end
