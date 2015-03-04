user_spec.rb
require 'spec_helper'

describe User do
	it 'is invalid without a name' do
		user = User.new
		user.should_not be_valid
	end

	it 'fails to create if email already exists'
end