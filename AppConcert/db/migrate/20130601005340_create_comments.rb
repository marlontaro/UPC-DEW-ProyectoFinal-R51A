class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.date :date
      t.integer :score
      t.references :concert
      t.references :user

      t.timestamps
    end
    add_index :comments, :concert_id
    add_index :comments, :user_id
  end
end
