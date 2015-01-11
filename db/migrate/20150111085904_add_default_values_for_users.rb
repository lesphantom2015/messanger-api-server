class AddDefaultValuesForUsers < ActiveRecord::Migration
  def up
  	change_table :users do |t|
		t.change :nickname, :string, default: "newbie"
	  	t.change :email, :string, default: "newbie@email.com"
	  	t.change :age, :integer, default: 0
	  	t.change :sex, :integer, default: 0
  	end
  end

  def down
  	change_table :users do |t|
  		t.change :nickname, :string, default: nil
  		t.change :email, :string, default: nil
  		t.change :age, :integer, default: nil
  		t.change :sex, :string, default: nil
  	end
  end
end
