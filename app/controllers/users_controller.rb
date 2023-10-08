class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] =  t('.success') #Tuboを使ってフラッシュメッセージを表示予定
      redirect_to login_path
    else
      flash.now[:notice] = t('fail') #Tuboを使ってフラッシュメッセージを表示予定
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
