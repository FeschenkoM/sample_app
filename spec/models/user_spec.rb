require 'spec_helper'

describe User do

	before {@user = User.new(name: "Example User", email: "user@example.com")}

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }

	it {should be_valid}

	describe "when name is not preset" do
		before { @user.name = " " }
		it {should_not be_valid}
	end


end