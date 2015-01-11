class AddPasswordToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :password, :string, null: false, default: "password"
  end
end
