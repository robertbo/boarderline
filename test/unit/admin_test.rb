require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  context "a new admin" do
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
      admin = Admin.new(first_name: 'David', last_name: 'Blayney', email: 'davblayn@ccgs.wa.edu.au')
      admin.password = admin.password_confirmation = "password-asdf"

      assert admin.valid?
    end
  end
end
