require 'test_helper'

class HelpControllerTest < ActionController::TestCase
  should "get index" do
    get :index
    assert_response :success
  end

  should "get markdown" do
    get :markdown
    assert_response :success
  end

  should "get welcome" do
    get :welcome
    assert_response :success
  end

  should "get news" do
    get :news
    assert_response :success
  end
end