class ChangeInterestsInUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :interests
    add_reference :interests, :user, foreign_key: true
  end
end
