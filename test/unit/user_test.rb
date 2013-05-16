require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "when registering an account" do
    should "enter a first name" do
      user = User.new
      assert !user.save
      assert !user.errors[:first_name].empty?
    end
    
    should "enter a last name" do
      user = User.new
      assert !user.save
      assert !user.errors[:last_name].empty?
    end
    
    should "enter an email address" do
      user = User.new
      assert !user.save
      assert !user.errors[:email].empty?
    end
  end
end
