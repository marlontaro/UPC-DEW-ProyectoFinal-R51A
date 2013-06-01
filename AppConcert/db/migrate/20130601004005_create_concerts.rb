class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :state
      t.references :user
      t.references :place
      t.references :group

      t.timestamps
    end
    add_index :concerts, :user_id
    add_index :concerts, :place_id
    add_index :concerts, :group_id
  end
end
