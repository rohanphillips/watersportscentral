class LocationsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @record = Location.new
  end

  def create
    @record = Location.new(location_params)
    if @record.valid?
      @record = Location.create(location_params)
      redirect_to @record
    else
      render :new
    end
  end

  def edit
    @record = Location.find(params[:id])
  end

  def update
    @record = Location.find(params[:id])
    if @record.valid?   
      if params[:commit] == "Create Comment"
        @comment = @record.comments.create(comment_params)
        redirect_to location_url
      elsif params[:commit] != "Edit"
        @record.update(location_params)
        redirect_to location_url
      else
        redirect_to edit_location_url
      end
    else
      render :new
    end
  end

  def show
    @record = Location.find(params[:id])
  end

  def index
    if params[:user_id]
      @locations = User.find(params[:user_id]).locations
    else
      @locations = Location.all
    end
  end
 
  private
 
  def location_params
    params.require(:location).permit(:name, :description, :location_info).merge(user_id: session[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :comment_text)
  end
end