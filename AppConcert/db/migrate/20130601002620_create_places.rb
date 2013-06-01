class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :image
      t.decimal :longitude
      t.decimal :latitude
      t.references :district

      t.timestamps
    end
  end
end
