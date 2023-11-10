class TestComment < ApplicationRecord
  belongs_to :user
  belongs_to :test_category
  belongs_to :souvenir_photo

  validates :content, presence: true, length: { maximum: 150 }
end
