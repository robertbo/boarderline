require 'test_helper'

class HelpControllerTest < ActionController::TestCase
  test "should get markdown" do
    get :markdown
    assert_response :success
  end
  
  test "should get welcome" do
    get :welcome
    assert_response :success
  end
end
