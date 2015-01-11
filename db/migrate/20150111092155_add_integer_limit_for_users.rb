class AddIntegerLimitForUsers < ActiveRecord::Migration
  def up
  	change_table :users do |t|
  		t.change :age, :integer, limit: 3
  		t.change :sex, :integer, limit: 1
  	end
  end

  def down
  	change_table :users do |t|
  		t.change :age, :integer, limit: nil
  		t.change :sex, :integer, limit: nil
  	end
  end
end
