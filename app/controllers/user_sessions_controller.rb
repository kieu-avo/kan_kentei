class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password], params[:remember] == 'on')
    if @user
      redirect_to categories_path, success: t('.success')
    else
      flash.now[:error] = t('.failed')
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to login_path, status: :see_other, success: t('.logout')
  end
end
