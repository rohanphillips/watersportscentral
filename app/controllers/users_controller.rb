class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user = User.create(user_params)
    else
      render :new
    end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end
