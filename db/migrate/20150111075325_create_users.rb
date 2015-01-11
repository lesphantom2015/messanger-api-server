class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
