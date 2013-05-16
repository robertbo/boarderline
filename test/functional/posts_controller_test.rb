require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end
  
  test "should be redirected when visiting new while not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should get new when logged in" do
    sign_in users(:david)
    get :new
    assert_response :success
  end
  
  test "should be logged in to post a news post" do
    post :create, post: { title: "Boarders are now banned from Claremont leave", content: "Hello, this is a test post for the sake of testing the posts controller" }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should create post when logged in" do
    sign_in users(:david)
    assert_difference('Post.count') do
      post :create, post: { author: @post.author, content: @post.content, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end
  
  test "should be redirected when visiting edit while not logged in" do
    get :edit, id: @post
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should get edit when user signed in" do
    sign_in users(:david)
    get :edit, id: @post
    assert_response :success
  end
  
  test "should redirect post update when not signed in" do
    put :update, id: @post, post: { title: @post.title, content: @post.title }
  end

  test "should update post when user signed in" do
    sign_in users(:david)
    put :update, id: @post, post: { author: @post.author, content: @post.content, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end