class Quiz < ApplicationRecord
  belongs_to :japan_and_overseas_test_category
  has_many :quiz_choices

  scope :select_category, ->(name) {
    category = JapanAndOverseasTestCategory.find_by(title: name)
    includes(:quiz_choices).where(japan_and_overseas_test_category_id: category.id)
    }
end
