class AddReceiverToChat < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :receiver, foreign_key: {to_table: :users}
  end
end
