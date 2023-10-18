class UserQuizAnswer < ApplicationRecord
  belongs_to :quiz
  belongs_to :quiz_choice
  belongs_to :user
end
