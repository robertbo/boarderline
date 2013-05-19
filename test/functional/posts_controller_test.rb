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
    sign_in users(:admin1)
    get :new
    assert_response :success
  end
  
  test "should be logged in to post a news post" do
    post :create, post: { title: "Boarders are now banned from Claremont leave", content: "Hello, this is a test post for the sake of testing the posts controller" }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should create post when logged in" do
    sign_in users(:admin1)
    assert_difference('Post.count') do
      post :create, post: { content: @post.content, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end
  
  test "should create post for current user when logged in" do
    sign_in users(:admin1)
    assert_difference('Post.count') do
      post :create, post: { user_id: users(:admin2).id, content: @post.content, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
    assert_equal assigns(:post).user_id, users(:admin1).id
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
    sign_in users(:admin1)
    get :edit, id: @post
    assert_response :success
  end
  
  test "should redirect post update when not signed in" do
    put :update, id: @post, post: { title: @post.title, content: @post.title }
  end

  test "should update post when user signed in" do
    sign_in users(:admin1)
    put :update, id: @post, post: { content: @post.content, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end
  
  test "should update post for current user when user signed in" do
    sign_in users(:admin1)
    put :update, id: @post, post: { user_id: users(:admin2).id, content: @post.content, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
    assert_equal assigns(:post).user_id, users(:admin1).id
  end
  
  test "should not update post if nothing has changed" do
    sign_in users(:admin1)
    put :update, id: @post
    assert_redirected_to post_path(assigns(:post))
    assert_equal assigns(:post).user_id, users(:admin1).id
  end
  
  test "should redirect to login page when destroying post while not signed in" do
    delete :destroy, id: @post
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should destroy post when user signed in" do
    sign_in users(:admin1)
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
  end

    assert_redirected_to posts_path
  end
end