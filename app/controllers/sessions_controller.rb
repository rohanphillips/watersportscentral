class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome, :index]
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login', notice: "Invalid Login Credentials"
    end 
  end

  def fb_create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
 
    session[:user_id] = @user.id
 
    render 'welcome/home'
  end

  def page_requires_login
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
  
end