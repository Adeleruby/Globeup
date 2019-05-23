class AddColumnsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :city, foreign_key: true
    add_reference :events, :user, foreign_key: true
    add_column :events, :description, :text
    add_column :events, :starts, :datetime
    add_column :events, :ends, :datetime
    add_column :events, :category, :string
  end
end
