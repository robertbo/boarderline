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
    
    context "when logged in" do # This code will only assert a redirection as the sign_in helper does not work in integration tests
      should "redirect to root on /logout" do
        get '/logout'
        assert_response :redirect
        assert_redirected_to :root
      end
      
      should "redirect to root on /account" do
        get '/account'
        assert_response :redirect
        assert_redirected_to :new_user_session
      end
    end
  end
end