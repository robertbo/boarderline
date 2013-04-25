require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  context "when adding an admin account" do
    should "enter a first name" do
      admin = Admin.new
      assert !admin.save
      assert !admin.errors[:first_name].empty?
    end
    
    should "enter a last name" do
      admin = Admin.new
      assert !admin.save
      assert !admin.errors[:last_name].empty?
    end
    
    should "enter an email address" do
      admin = Admin.new
      assert !admin.save
      assert !admin.errors[:email].empty?
    end
  end
end
