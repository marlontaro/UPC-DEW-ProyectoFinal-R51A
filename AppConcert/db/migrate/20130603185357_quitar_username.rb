class QuitarUsername < ActiveRecord::Migration
  
  	remove_column :users, :username
   
end
