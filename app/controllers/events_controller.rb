class EventsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event = Event.create(event_params)
      render :show
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.valid?
      if params[:commit] != "Edit"
        @event.update(event_params)
        redirect_to event_url
      else
        redirect_to edit_event_url
      end
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end
 
  private
 
  def event_params
    params.require(:event).permit(:name, :description, :sport_id, :date, :location_id).merge(user_id: session[:user_id])
  end


end