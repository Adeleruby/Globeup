class DeleteColumnInCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :description
  end
end
