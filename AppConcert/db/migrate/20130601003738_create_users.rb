class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :type
      t.string :name
      t.string :lastname
      t.integer :sex
      t.integer :document_type
      t.string :document_number
      t.string :email
      t.string :foursquare_token
      t.string :password

      t.timestamps
    end
  end
end
