class LocationsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.valid?
      @location = Location.create(location_params)
      render :show
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.valid?
      if params[:commit] != "Edit"
        Location.update(location_params)
        redirect_to location_url
      else
        redirect_to edit_location_url
      end
    else
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.all
  end
 
  private
 
  def location_params
    params.require(:location).permit(:name, :description, :location_info).merge(user_id: session[:user_id])
  end


end