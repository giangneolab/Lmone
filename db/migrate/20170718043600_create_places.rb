class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :email
      t.string :logo_url
      t.integer :opening
      t.integer :closing
      t.string :phone_number
      t.text :introduce
      t.decimal :price_from
      t.decimal :price_to
      t.string :address
      t.float :avg_rating

      t.timestamps
    end
  end
end
