class SessionsController < ApplicationController
  def new
  end

  def create
    byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      if session[:user_id] then
        sessions[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to '/login'
      end   
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
  end
  
end