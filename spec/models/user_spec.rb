require 'rails_helper'

RSpec.describe User, type: :model do
  require_relative "../models/user"

  describe User do
  	describe "::new" do
  		it "initializes a new user" do
  			user = User.new
  			expect(user).to be_a(User)
  		end

  		it "should have a name" do
      		expect(user.name).to_not be_nil
    	end

  		it "should have an email" do
  			expect(user.email).to_not be_nil
  		end

  end

  describe "#self.confirm" do
  		it "allows a secure password"

  		end
  end


end
