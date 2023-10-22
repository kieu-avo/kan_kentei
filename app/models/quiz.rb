class Quiz < ApplicationRecord
  belongs_to :japan_and_overseas_test_category
  has_many :quiz_choices
end
