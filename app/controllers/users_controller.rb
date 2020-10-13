class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @record = User.new
  end

  def create
    @record = User.new(user_params)
    if @record.save
      redirect_to user_url(@record.id)
    else
      render :new
    end
  end

  def edit
    @record = User.find(params[:id])
  end

  def update
    @record = User.find(params[:id])
    if @record.valid?      
      if params[:commit] != "Edit"
        @record.update(user_params)        
        
        redirect_to user_url
      else
        redirect_to edit_user_url
      end
    else
      render :new
    end
  end

  def show    
    @record = User.find(params[:id])
    if params[:id] != current_user.id.to_s && is_admin == false
      redirect_to not_admin_user_url
    end
  end

  def index
    if is_admin
      @records = User.all
    else
      redirect_to not_admin_user_url
    end
  end

  def active
    @records = User.all.active
  end

  def inactive
    @records = User.all.inactive
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :active, :admin)
  end

  def not_admin_user_url
    '/users/' + current_user.id.to_s
  end
  
  def valid_commit
    params[:commit] != "Edit" || params[:commit]
  end

end
