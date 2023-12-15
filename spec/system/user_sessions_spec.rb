require 'rails_helper'

RSpec.describe "UserSessions", type: :system do
  let(:user) { create(:user) }
  let!(:finland) { create(:test_category, title: "フィンランド") }

  before do 
    visit login_path
    expect(page).to have_content("ログイン")
  end

  #ログイン成功
  describe 'all form fields are valid' do
    it 'is successful' do
      login(user)
      expect(page).to have_current_path(categories_path)
      expect(page).to have_content("ログインしました")
    end
  end

  #ログイン失敗
  describe 'some fields are invalid' do
    describe 'email field' do
      context 'when email is blank' do
        it 'is failed' do
          fill_in 'email', with: ''
          fill_in 'password', with: user.password
          click_button 'ログイン'
          expect(current_path).to eq login_path
          expect(page).to have_content("ログインに失敗しました")
        end
      end

      context 'when email does not match registered email' do 
        it 'is failed' do
          fill_in 'email', with: 'kathy@example.com'
          fill_in 'password', with: user.password
          click_button 'ログイン'
          expect(current_path).to eq login_path
          expect(page).to have_content("ログインに失敗しました")
        end
      end
    end

    describe 'password field' do
      context 'when password is blank' do
        it 'is failed' do
          fill_in 'email', with: user.email
          fill_in 'password', with: ''
          click_button 'ログイン'
          expect(current_path).to eq login_path
          expect(page).to have_content("ログインに失敗しました")
        end
      end 

      context 'when password does not match registered password' do
        it 'is failed' do
          fill_in 'email', with: user.email
          fill_in 'password', with: 'kathy'
          click_button 'ログイン'
          expect(current_path).to eq login_path
          expect(page).to have_content("ログインに失敗しました")
        end
      end 
    end
  end

  #ユーザー登録画面へ
  describe 'new user link' do
    it 'is displayed' do
      expect(page).to have_link('ユーザー登録はこちらへ')
      click_link 'ユーザー登録はこちらへ'
      expect(page).to have_current_path(new_user_path)
      expect(page).to have_content("ユーザー登録")
    end
  end

  #パスワードリセット申請画面へ
  describe 'password reset link' do
    it 'is displayed' do
      expect(page).to have_link('パスワードをお忘れの方はこちらへ')
      click_link 'パスワードをお忘れの方はこちらへ'
      expect(page).to have_current_path(new_password_reset_path)
      expect(page).to have_content("パスワードリセット申請")
    end
  end

  #Line QRコードの表示 （ステータスのテストは./requests/line_messagings_spec.rbにて）
  describe 'line messaging QR code' do
    it 'is displayed' do 
      expect(page).to have_selector("img[src='https://qr-official.line.me/gs/M_843iulty_BW.png?oat_content=qr']")
    end
  end
end
