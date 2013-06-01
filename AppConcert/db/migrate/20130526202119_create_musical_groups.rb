class CreateMusicalGroups < ActiveRecord::Migration
  def change
    create_table :musical_groups do |t|
      t.integer :musical_style_id
      t.string :name
      t.string :imagen

      t.timestamps
    end
  end
end
