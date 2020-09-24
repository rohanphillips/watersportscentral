class SportsController < ApplicationController
  skip_before_action :authorized

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.valid?
      @user = Sport.create(sport_params)
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
 
  private
 
  def sport_params
    params.require(:sport).permit(:name, :description)
  end


end