class AddGmapsTo < ActiveRecord::Migration
  def up
    remove_column :places, :Gmaps
    add_column :places, :gmaps, :boolean
  end

  def down
  end
end
