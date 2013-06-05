require 'test_helper'

class HelpControllerTest < ActionController::TestCase
  context "when not signed in" do
    should "get markdown" do
      get :markdown
      assert_response :success
    end

    should "get welcome" do
      get :welcome
      assert_response :success
    end
  end

  context "when user signed in" do
    setup do
      sign_in users(:user1)
    end

    should "get markdown" do
      get :markdown
      assert_response :success
    end

    should "get welcome" do
      get :welcome
      assert_response :success
    end
  end

  context "when admin signed in" do
    setup do
      sign_in users(:admin1)
    end

    should "get markdown" do
      get :markdown
      assert_response :success
    end

    should "get welcome" do
      get :welcome
      assert_response :success
    end
  end
end
