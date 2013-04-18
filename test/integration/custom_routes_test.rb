require 'test_helper'

class CustomRoutesTestTest < ActionDispatch::IntegrationTest
  test "thst /news gets the all news posts page" do
    get '/news'
    assert_response :success
  end
end