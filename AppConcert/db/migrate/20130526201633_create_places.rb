class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :district_id
      t.string :name
      t.string :address
      t.integer :longitud
      t.integer :latitude
      t.string :phone
      t.string :imagen

      t.timestamps
    end
  end
end
