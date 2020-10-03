recordclass EventsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @record = Event.new
  end

  def create
    @record = Event.new(event_params)
    if @record.valid?
      @record = Event.create(event_params)
      redirect_to @record
    else
      render :new
    end
  end

  def edit
    @record = Event.find(params[:id])
  end

  def update
    @record = Event.find(params[:id])
    if @record.valid?
      if params[:commit] != "Edit"
        @record.update(event_params)
        redirect_to event_url
      else
        redirect_to edit_event_url
      end
    else
      render :new
    end
  end

  def show
    
    @record = Event.find(params[:id])
  end

  def index
    
    if params[:user_id]
      @events = User.find(params[:user_id]).events
    else
      @events = Event.all
    end
  end
 
  private
 
  def event_params
    params.require(:event).permit(:name, :description, :sport_id, :date, :location_id).merge(user_id: session[:user_id])
  end


end