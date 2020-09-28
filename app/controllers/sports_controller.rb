class SportsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.valid?
      @sport = Sport.create(sport_params)
      redirect_to @sport
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
        @sport.update(sport_params)
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
    if params[:user_id]
      @sports = User.find(params[:user_id]).sports
    else
      params[:user_id] = session[:user_id]
      @sports = Sport.all
    end
  end
 
  private
 
  def sport_params
    params.require(:sport).permit(:name, :description).merge(user_id: session[:user_id])
  end


end