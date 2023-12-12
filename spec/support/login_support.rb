module LoginSupport
  def login(user)
    visit login_path
    expect(page).to have_content("ログイン")
    fill_in 'email', with: user.email
    fill_in 'password', with: 'mikemike'
    click_button 'ログイン'
  end
end