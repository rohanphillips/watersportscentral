class SportsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @record = Sport.new
  end

  def create
    @record = Sport.new(sport_params)
    if @record.valid?
      @record = Sport.create(sport_params)
      redirect_to @record
    else
      render :new
    end
  end

  def edit
    @record = Sport.find(params[:id])
    if !owns_record(@record)
      redirect_to sports_url
    end
  end

  def update
    @record = Sport.find(params[:id])
    if @record.valid? && current_user && owns_record(@record)
      if params[:commit] != "Edit"
        @record.update(sport_params)
        redirect_to sport_url
      else
        redirect_to edit_sport_url
      end
    else
      render :new
    end
  end

  def show
    @record = Sport.find(params[:id])
  end

  def index
    if params[:user_id]
      @records = User.find(params[:user_id]).sports
    else
      @records = Sport.all
    end
  end
 
  private
 
  def sport_params
    params.require(:sport).permit(:name, :description).merge(user_id: session[:user_id])
  end


end