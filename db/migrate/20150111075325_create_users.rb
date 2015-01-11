class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
		t.string :nickname, null: false
		t.string :email, null: false
		t.integer :age, null: false
		t.string :sex, null: false

		t.timestamps null:false
    end
  end
end
