class TestComment < ApplicationRecord
  belongs_to :user
  belongs_to :test_category
  belongs_to :souvenir_photo

  validates :content, presence: true, length: { maximum: 48 }

  def self.ransackable_attributes(_auth_object = nil)
    %w[content created_at id souvenir_photo_id test_category_id updated_at user_id]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[souvenir_photo test_category user]
  end
end
