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
    
    should "enter a school email address" do
      user = User.new
      user.email = "test@example.com"
      
      assert !user.save
      assert !user.errors[:email].empty?
      assert user.errors[:email].include?("must be a school email address")
    end
    
    should "be able to sign up with a valid email address" do
        user = User.new
        user.first_name = users(:david).first_name
        user.last_name = users(:david).last_name
        user.password = 'password'
        user.email = "test2@ccgs.wa.edu.au"
        
        assert user.save
        assert user.errors[:email].empty?
      end
  end
end
