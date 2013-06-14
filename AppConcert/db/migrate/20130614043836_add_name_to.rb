class AddNameTo < ActiveRecord::Migration
  def up
    add_column :concerts, :name, :string
  end

  def down
  end
end
