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

    should "have an email address that ends with '@ccgs.wa.edu.au'" do
      admin = Admin.new
      admin.email = "dev@davblayn.com"

      assert !admin.save
      assert !admin.errors[:email].empty?
      assert admin.errors[:email].include?("must be a school email address.")
    end

    should "be able to sign up with a valid email address" do
      admin = Admin.new
      admin.email = "jsmith@ccgs.wa.edu.au"

      assert admin.save
      assert admin.errors[:email].empty?
    end
  end
end
