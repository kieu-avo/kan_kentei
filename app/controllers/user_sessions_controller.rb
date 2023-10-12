class UserSessionsController < ApplicationController
  
  def new; end
  
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    flash[:success] = t('.logout')
    redirect_to root_path, status: :see_other
  end
end
