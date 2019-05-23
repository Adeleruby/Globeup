class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :users, :current_location, foreign_key: {to_table: :cities}
    add_reference :users, :from, foreign_key: {to_table: :cities}
    add_reference :users, :moving_to, foreign_key: {to_table: :cities}

  end
end
