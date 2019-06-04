class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  # def new
  #   @city = City.find(params[:city_id])
  #   @event = Event.new
  # end

  # def create
  #   @city = City.find(params[:city_id])
  #   @event = Event.new(event_params)
  #   @event.city = @city
  #   @event.owner = current_user
  #   if @event.save
  #     redirect_to event_path(@event)
  #   else
  #     render "new"
  #   end
  # end

  # def new
  #   @new_chat = ChatRoom.new
  #   render "create"
  # end


  def create
    @user = current_user
    # raise
    @new_chat = ChatRoom.new(name: "Chat #{User.where(id: params[:user_id]).first.first_name}")
    if @new_chat.save
      redirect_to chat_room_path(@new_chat)
    end
  end

  private

  def chat_params
      # params.require(:chat_room).permit(:user_id)
  end
end

