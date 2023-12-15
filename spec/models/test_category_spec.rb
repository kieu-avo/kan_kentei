require 'rails_helper'

RSpec.describe TestCategory, type: :model do
  #関連付け
  describe 'associations' do
    it 'has many quizzes' do
      expect(TestCategory.reflect_on_association(:quizzes).macro).to eq(:has_many)
      expect(TestCategory.reflect_on_association(:quizzes).options).to include(dependent: :destroy)
    end

    it 'has many quiz_results' do
      expect(TestCategory.reflect_on_association(:quiz_results).macro).to eq(:has_many)
      expect(TestCategory.reflect_on_association(:quiz_results).options).to include(dependent: :destroy)
    end

    it 'has many souvenir_photos' do
      expect(TestCategory.reflect_on_association(:souvenir_photos).macro).to eq(:has_many)
      expect(TestCategory.reflect_on_association(:souvenir_photos).options).to include(dependent: :destroy)
    end

    it 'has many test_comments' do
      expect(TestCategory.reflect_on_association(:test_comments).macro).to eq(:has_many)
      expect(TestCategory.reflect_on_association(:test_comments).options).to include(dependent: :destroy)
    end

    it 'has many reviews' do
      expect(TestCategory.reflect_on_association(:reviews).macro).to eq(:has_many)
      expect(TestCategory.reflect_on_association(:reviews).options).to include(dependent: :destroy)
    end
  end
end
