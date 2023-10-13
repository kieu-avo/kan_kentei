class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :edit, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def user_params
    params.require(:user).permit(:email, :name, :avatar)
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
