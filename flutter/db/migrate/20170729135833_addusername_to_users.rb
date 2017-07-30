class AddusernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username,:string
    add_index :users, :username, unique: true #to add column 
  end
end
