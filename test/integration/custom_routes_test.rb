require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /news gets the all news posts page" do
    get '/news'
    assert_response :success
  end
end