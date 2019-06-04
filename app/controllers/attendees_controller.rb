class AttendeesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @user = current_user
    @attendee = Attendee.new
    # (attendee_params)
    @attendee.event = @event
    @attendee.user = @user
    if @attendee.save
      flash[:alert] = "Your have successfully signed up for our event!"
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
    # params.require(:attendee).permit(:attendee_id, :event_id, :created_at, :updated_at)
    params.require(:attendee).permit(:attendee_id, :event_id, :created_at, :updated_at)

  end

end
