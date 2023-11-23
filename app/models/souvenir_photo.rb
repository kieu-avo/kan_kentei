class SouvenirPhoto < ApplicationRecord
  belongs_to :test_category
  has_many :test_comments, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at explanation id image_url name test_category_id updated_at]
  end
end
