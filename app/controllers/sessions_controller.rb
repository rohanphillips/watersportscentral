class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end 
  end

  def page_requires_login
  end

  def destroy
    session.delete :name
  end
  
end