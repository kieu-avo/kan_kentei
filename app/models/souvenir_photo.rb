class SouvenirPhoto < ApplicationRecord
  belongs_to :test_category
  has_many :test_comments, dependent: :destroy
end
