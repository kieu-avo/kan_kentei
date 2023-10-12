class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  validates :password, length: { minimum: 5 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

end