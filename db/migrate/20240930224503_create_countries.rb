class CreateCountries < ActiveRecord::Migration[7.2]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :iso3, null: false
      t.string :iso2, null: false
      t.string :numeric_code, null: false
      t.string :phone_code
      t.string :capital, null: false
      t.string :currency, null: false
      t.string :currency_name
      t.string :currency_symbol
      t.string :tld
      t.string :native
      t.string :region
      t.string :nationality
      t.jsonb :translations, default: {}

      t.index :name
      t.index :iso2
      t.timestamps
    end
  end
end
