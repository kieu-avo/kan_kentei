require 'rails_helper'

RSpec.describe "Users", type: :system do
  let(:user) { build(:user) }
  let!(:vietnam_category) { create(:test_category, title: "ベトナム") }

    #成功
    describe 'all form fields are valid' do
      it 'is completed successfully' do
        visit new_user_path
        expect(page).to have_content("ユーザー登録")
        fill_in 'user[name]', with: user.name
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        fill_in 'user[password_confirmation]', with: user.password_confirmation
        click_button '登録'
        expect(page).to have_current_path(categories_path)
        expect(page).to have_content("ユーザー登録が完了しました")
      end
    end

    #失敗
    describe 'some fields are invalid' do
      context 'name filed' do
        it 'is blank' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: ''
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("名前を入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end

        it 'is more than 101 characters' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: Faker::Lorem.characters(number: 101)
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("名前は100文字以内で入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end
      end

      context 'email filed' do
        it 'is blank' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: ''
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("メールアドレスを入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end

        it 'is invalid due to duplicate email' do
          user.save
          another_user = build(:user, email: user.email)

          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: another_user.email
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("メールアドレスはすでに存在します")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end
      end

      context 'password field' do
        it 'is blank' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: ''
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("パスワードは5文字以上で入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end

        it 'is 4 characters or shorter' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: 'late'
          fill_in 'user[password_confirmation]', with: user.password_confirmation
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("パスワードは5文字以上で入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end
      end

      context 'password_confirmation field' do
        it 'is blank' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: ''
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("パスワード確認を入力してください")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end

        it 'does not match the password column' do
          visit new_user_path
          expect(page).to have_content("ユーザー登録")
          fill_in 'user[name]', with: user.name
          fill_in 'user[email]', with: user.email
          fill_in 'user[password]', with: user.password
          fill_in 'user[password_confirmation]', with: 'cafelatte'
          click_button '登録'
          expect(current_path).to eq new_user_path
          expect(page).to have_content("パスワード確認とパスワードの入力が一致しませ")
          expect(page).to have_content("ユーザー登録に失敗しました")
        end
      end
    end
end
