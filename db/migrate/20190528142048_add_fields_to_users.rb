class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :interests, :string
    add_column :users, :about, :text
  end
end
