class CreateAssitances < ActiveRecord::Migration
  def change
    create_table :assitances do |t|
      t.references :concert
      t.references :user

      t.timestamps
    end
    add_index :assitances, :concert_id
    add_index :assitances, :user_id
  end
end
