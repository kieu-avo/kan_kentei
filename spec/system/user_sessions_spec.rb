require 'rails_helper'

RSpec.describe "UserSessions", type: :system do
  let(:user) { create(:user) }
  let!(:finland) { create(:test_category, title: "フィンランド") }

  #成功
  describe 'all form fileds are valid' do
    it 'is successful' do
      login(user)
      expect(page).to have_current_path(categories_path)
      expect(page).to have_content("ログインしました")
    end
  end

  #失敗
  describe 'some fields are invalid' do
    context 'email field' do
      it 'is blank' do
        visit login_path
        expect(page).to have_content("ログイン")
        fill_in 'email', with: ''
        fill_in 'password', with: user.password
        click_button 'ログイン'
        expect(current_path).to eq login_path
        expect(page).to have_content("ログインに失敗しました")
      end

      it 'does not match registerd email' do
        visit login_path
        expect(page).to have_content("ログイン")
        fill_in 'email', with: 'kathy@example.com'
        fill_in 'password', with: user.password
        click_button 'ログイン'
        expect(current_path).to eq login_path
        expect(page).to have_content("ログインに失敗しました")
      end
    end

    context 'password filed' do
      it 'is blank' do
        visit login_path
        expect(page).to have_content("ログイン")
        fill_in 'email', with: user.email
        fill_in 'password', with: ''
        click_button 'ログイン'
        expect(current_path).to eq login_path
        expect(page).to have_content("ログインに失敗しました")
      end

      it 'does not match registerd password' do
        visit login_path
        expect(page).to have_content("ログイン")
        fill_in 'email', with: user.email
        fill_in 'password', with: 'kathy'
        click_button 'ログイン'
        expect(current_path).to eq login_path
        expect(page).to have_content("ログインに失敗しました")
      end
    end
  end
end
