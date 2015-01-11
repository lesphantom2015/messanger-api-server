class AddIndexToRelations < ActiveRecord::Migration
  def change
  	add_index :relations, :user1
  end
end
