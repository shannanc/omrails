class AddUsernameAndFirstnameAndLastnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
