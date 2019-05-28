class ChangeColumnNameInCities < ActiveRecord::Migration[5.2]
  def change
    rename_column :cities, :location, :country_name
  end
end
