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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.valid?
      if params[:commit] != "Edit"
        User.update(user_params)
      else
        redirect_to '/users/' + @user.id.to_s + 'edit' 
      end
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end
