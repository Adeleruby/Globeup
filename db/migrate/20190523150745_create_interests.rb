class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :category
      t.string :string

      t.timestamps
    end
  end
end
