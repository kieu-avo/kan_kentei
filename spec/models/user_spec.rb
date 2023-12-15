require 'rails_helper'

RSpec.describe User, type: :model do
  subject { user.valid? }
  let(:user) { build(:user) }

  #バリデーション
  describe 'validations' do
    #（全てのカラムが有効）
    context 'all attributes are valid' do
      it 'is valid' do
        expect(user).to be_valid
      end
    end

    #（カラムが無効）
    context 'name column' do
      it 'is blank' do
        user.name = ''
        expect(user).not_to be_valid
        expect(user.errors[:name]).to include("を入力してください")
      end

      it 'is more than 100 characters' do
        user.name = Faker::Lorem.characters(number: 101)
        expect(user).not_to be_valid
        expect(user.errors[:name]).to include("は100文字以内で入力してください")
      end
    end

    context 'email column' do
      it 'is blank' do
        user.email = ''
        expect(user).not_to be_valid
        expect(user.errors[:email]).to include("を入力してください")
      end

      it 'is invalid due to duplicate email' do
        user.save
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user).not_to be_valid
        expect(another_user.errors[:email]).to include("はすでに存在します")
      end
    end

    context 'password column' do
      it 'is blank' do
        user.password = ''
        expect(user).not_to be_valid
        expect(user.errors[:password]).to include("は5文字以上で入力してください")
      end

      it 'is 4 characters or shorter' do
        user.password = 'late'
        expect(user).not_to be_valid
        expect(user.errors[:password]).to include("は5文字以上で入力してください")
      end
    end

    context 'password_confirmation column' do
      it 'is blank' do
        user.password_confirmation = ''
        expect(user).not_to be_valid
        expect(user.errors[:password_confirmation]).to include("を入力してください")
      end

      it 'does not match the password column' do
        user.password_confirmation = 'cafelatte'
        expect(user).not_to be_valid
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end

  #関連付け
  describe 'associations' do
    it 'has many user_quiz_answers' do
      expect(User.reflect_on_association(:user_quiz_answers).macro).to eq(:has_many)
      expect(User.reflect_on_association(:user_quiz_answers).options).to include(dependent: :destroy)
    end

    it 'has many quizzes' do
      expect(User.reflect_on_association(:quizzes).macro).to eq(:has_many)
      expect(User.reflect_on_association(:quizzes).options).to include(through: :user_quiz_answers)
    end

    it 'has many quiz_choices' do
      expect(User.reflect_on_association(:quiz_choices).macro).to eq(:has_many)
      expect(User.reflect_on_association(:quiz_choices).options).to include(through: :user_quiz_answers)
    end

    it 'has many quiz_results' do
      expect(User.reflect_on_association(:quiz_results).macro).to eq(:has_many)
      expect(User.reflect_on_association(:quiz_results).options).to include(dependent: :destroy)
    end

    it 'has many souvenir_photos' do
      expect(User.reflect_on_association(:souvenir_photos).macro).to eq(:has_many)
      expect(User.reflect_on_association(:souvenir_photos).options).to include(through: :test_comments)
    end

    it 'has many user_review_answers' do
      expect(User.reflect_on_association(:user_review_answers).macro).to eq(:has_many)
      expect(User.reflect_on_association(:user_review_answers).options).to include( dependent: :destroy)
    end

    it 'has many reviews' do
      expect(User.reflect_on_association(:reviews).macro).to eq(:has_many)
      expect(User.reflect_on_association(:reviews).options).to include(through: :user_review_answers)
    end

    it 'has many test_comments' do
      expect(User.reflect_on_association(:test_comments).macro).to eq(:has_many)
      expect(User.reflect_on_association(:test_comments).options).to include(dependent: :destroy)
    end
  end
end
