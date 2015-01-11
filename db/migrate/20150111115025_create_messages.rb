class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user1
      t.integer :user2
      t.string :message

      t.timestamps
    end
  end
end
