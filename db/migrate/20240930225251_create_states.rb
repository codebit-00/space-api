class CreateStates < ActiveRecord::Migration[7.2]
  def change
    create_table :states do |t|
      t.string :name, null: false
      t.string :state_code, null: false
      t.string :type
      t.string :latitude
      t.string :longitude
      t.references :country,  null: false, foreign_key: true

      t.index :name
      t.index :state_code
      t.timestamps
    end
  end
end
