class AddPhotosToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :card_photo, :string
    add_column :cities, :cover_photo, :string
  end
end
