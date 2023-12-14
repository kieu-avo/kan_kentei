require 'rails_helper'

RSpec.describe UserReviewAnswer, type: :model do
  let(:user) { create(:user) }
  let(:review) { create(:review) }
  let(:user_review_answer) { create(:user_review_answer, user: user, review: review)}

  #バリデーション
  describe 'validations' do
    #（レビュー作成成功）
    describe 'all reviews are rated' do
      it 'is successful' do
        expect(user_review_answer).to be_valid
      end
    end
  
    #（レビュー作成失敗）
    describe 'rating is failed' do
      context 'ratings are not uniqueness' do
        it 'is failed' do
          create(:user_review_answer, user: user, review: review)
          duplicate_user_review_answer = build(:user_review_answer, user: user, review: review)    
          expect(duplicate_user_review_answer).not_to be_valid
        end  
      end

      context 'reviews are empty' do
        it 'is failed' do
          invalid_user_review_answer = build(:user_review_answer, rating: nil)
          expect(invalid_user_review_answer).not_to be_valid
        end
      end
    end
  end

  #関連付け
  describe 'associations' do
    it 'belongs to user' do
      expect(UserReviewAnswer.reflect_on_association(:user).macro).to eq(:belongs_to)
      expect(UserReviewAnswer.reflect_on_association(:user))
    end

    it 'belongs to review' do
      expect(UserReviewAnswer.reflect_on_association(:review).macro).to eq(:belongs_to)
      expect(UserReviewAnswer.reflect_on_association(:review))
    end
  end
end




