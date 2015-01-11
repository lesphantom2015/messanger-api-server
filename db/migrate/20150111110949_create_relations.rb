class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :user1
      t.integer :user2
    end
  end
end
