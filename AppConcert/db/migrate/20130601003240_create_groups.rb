class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :image
      t.references :style

      t.timestamps
    end
    add_index :groups, :style_id
  end
end
