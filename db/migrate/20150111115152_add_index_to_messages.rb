class AddIndexToMessages < ActiveRecord::Migration
  def change
  	add_index :messages, :user1
  	add_index :messages, :user2
  end
end
