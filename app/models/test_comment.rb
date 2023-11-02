class TestComment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :test_category, dependent: :destroy
  belongs_to :souvenir_photo

  validates :content, presence: true, length: { maximum: 20_000 }
end
