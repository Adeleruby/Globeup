class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @events = policy_scope(Event)
    @events = @events.search_by_name_description(params[:query]) if params[:query]
  end

  def all_events
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @kombucha
    if @kombucha.save
      redirect_to kombucha_path(@kombucha)
    else
      render "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @user = current_user
    @event = Event.find(params[:id])
    authorize @kombucha
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
  params.require(:event).permit(:name, :location, :description, :category)
end
