class AttendeesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @attendee = Attendee.new(attendee_params)
    @attendee.event = @event
    if @attendee.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @attendee = attendee.find(params[:id])
    @attendee.destroy
    redirect_to events_path
  end

  private

  def attendee_params
    params.require(:attendee).permit(:user_id, :event_id, :created_at, :updated_at)

  end

end
