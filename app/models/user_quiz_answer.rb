class UserQuizAnswer < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  belongs_to :quiz_choice, presence: true
end
