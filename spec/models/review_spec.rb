require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'associations' do
    it 'belongs to test_category' do
      expect(Review.reflect_on_association(:test_category).macro).to eq(:belongs_to)
    end

    it 'has many user_review_answers' do
      expect(Review.reflect_on_association(:user_review_answers).macro).to eq(:has_many)
      expect(Review.reflect_on_association(:user_review_answers).options).to include(dependent: :destroy)
    end
  end
end
