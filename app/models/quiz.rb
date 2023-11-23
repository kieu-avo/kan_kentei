class Quiz < ApplicationRecord
  belongs_to :test_category
  has_many :quiz_choices, dependent: :destroy
  has_many :user_quiz_answers, dependent: :destroy

  # 特定のカテゴリーのクイズ数をカウント
  def self.total_by_category(category_id)
    category = TestCategory.find_by(id: category_id)
    return 0 unless category

    where(test_category_id: category.id).count
  end
end
