class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user = User.create(user_params)
      redirect_to user_url
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
        redirect_to user_url
      else
        redirect_to edit_user_url
      end
    else
      render :new
    end
  end

  def show    
    @user = User.find(params[:id])
  end

  def index
    if is_admin

    else
      redirect_to not_admin_user_url
    end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation).merge(user_id: session[:user_id])
  end

  def not_admin_user_url
    '/users/' + current_user.id.to_s
  end
  
end
