class ChangeUserIdinAttendees < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendees, :user_id, :attendee_id
  end
end
