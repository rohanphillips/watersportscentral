class UsersController < ApplicationController
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
    #   session[:user_id] = @user.id      
    # else
    #   redirect_to new_user_url
    # end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end
