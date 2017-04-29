class AddUsernameToUsers < ActiveRecord::Migration
  def change
  #currentlu users add username in sqlite
  add_column :users, :username, :string #add a cloumns
  add_index :users, :username, unique:true #add index of columns
  end
end
