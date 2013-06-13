class UserAdd < ActiveRecord::Migration
  def up

	change_table :users do |t|
	      t.references :typeuser
	      t.string :name
	      t.string :lastname
	      t.references :typedocument
	      t.string :document
	      t.references :sexes
	end 

  end

  def down
  end
end
