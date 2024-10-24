class CreateCities < ActiveRecord::Migration[7.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.references :state, null: false, foreign_key: true

      t.index :name
      t.timestamps
    end
  end
end
