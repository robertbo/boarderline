require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  context "news" do
    should "display index on /news" do
      get '/news'
      assert_response :success
    end
  end
  
  context "auth" do
    context "when logged out" do
      should "display register page on /register" do
        get '/register'
        assert_response :success
      end
    
      should "display login page on /login" do
        get '/login'
        assert_response :success
      end
    end
  end
end