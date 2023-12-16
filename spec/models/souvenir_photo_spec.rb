require 'rails_helper'

RSpec.describe SouvenirPhoto, type: :model do
  #関連付け
  describe 'associations' do
    it 'belongs to test_category' do
      expect(SouvenirPhoto.reflect_on_association(:test_category).macro).to eq(:belongs_to)
    end

    it 'has_many test_comments' do
      expect(SouvenirPhoto.reflect_on_association(:test_comments).macro).to eq(:has_many)
      expect(SouvenirPhoto.reflect_on_association(:test_comments).options).to include(dependent: :destroy)
    end
  end
end
