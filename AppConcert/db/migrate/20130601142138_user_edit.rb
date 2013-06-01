class UserEdit < ActiveRecord::Migration
  def up

  	 remove_column :users, :type
  	 add_column :users, :user_type, :int


  end

  def down
  end
end
