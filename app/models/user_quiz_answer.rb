class UserQuizAnswer < ApplicationRecord
  belongs_to :quiz
  belongs_to :quize_choice
  belongs_to :user
end
