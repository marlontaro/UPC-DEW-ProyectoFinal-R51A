class CreateTypeusers < ActiveRecord::Migration
  def change
    create_table :typeusers do |t|
      t.string :name

      t.timestamps
    end
  end
end
