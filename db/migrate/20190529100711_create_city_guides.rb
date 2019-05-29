class CreateCityGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :city_guides do |t|
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
