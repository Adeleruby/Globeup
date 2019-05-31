class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @attendees = Attendee.where(event_id: @event.id)
  end

  def new
    @city = City.find(params[:city_id])
    @event = Event.new
  end

  def create
    @city = City.find(params[:city_id])
    @event = Event.new(event_params)
    @event.city = @city
    @event.owner = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: 'Event successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path(@events)
  end
end

private

def event_params
  params.require(:event).permit(:name, :location, :description, :category, :photo, :starts, :ends)
end
