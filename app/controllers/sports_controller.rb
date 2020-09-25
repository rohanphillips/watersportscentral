class SportsController < ApplicationController

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.valid?
      @sport = Sport.create(sport_params)
      render :show
    else
      render :new
    end
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:id])
    if @sport.valid?
      if params[:commit] != "Edit"
        Sport.update(sport_params)
        redirect_to sport_url
      else
        redirect_to edit_sport_url
      end
    else
      render :new
    end
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def index
    @sports = Sport.all
  end
 
  private
 
  def sport_params
    params.require(:sport).permit(:name, :description).merge(user_id: session[:user_id])
  end


end