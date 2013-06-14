class Groupuser < ActiveRecord::Migration
  def up

	change_table :groups do |t|
	      t.references :user	      
	end 
  end

  def down
  end
end
