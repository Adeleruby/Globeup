class RemoveStringFromInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :string
  end
end
