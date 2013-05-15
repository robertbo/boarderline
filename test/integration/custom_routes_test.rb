require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  context "news" do
    should "should display index on /news" do
      get '/news'
      assert_response :success
    end
  end
end