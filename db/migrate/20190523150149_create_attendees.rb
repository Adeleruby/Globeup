class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :events
      t.string :users

      t.timestamps
    end
  end
end
