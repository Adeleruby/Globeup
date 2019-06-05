class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.user = current_user
    # @message.receiver = User.
    if @message.save
      respond_to do |format|
        format.html { redirect_to chat_room_path(@chat_room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  def index
    @chat_room = Message.where(user_id: current_user).map { |msg| msg.chat_room }.uniq
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
