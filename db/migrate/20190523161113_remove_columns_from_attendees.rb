class RemoveColumnsFromAttendees < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendees, :events, :string
    remove_column :attendees, :users, :string
    add_reference :attendees, :user, foreign_key: true
    add_reference :attendees, :event, foreign_key: true
  end
end
