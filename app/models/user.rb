class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :user_quiz_answers
  has_many :quizzes, through: :user_quiz_answers
  has_many :quiz_choices, through: :user_quiz_answers
  has_many :quiz_results
  has_many :user_souvenirs
  has_many :souvenir_photos, through: :user_souvenirs

  mount_uploader :avatar, AvatarUploader

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 5 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

end

