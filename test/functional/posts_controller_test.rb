require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end
  
  context "when user not signed in" do
    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:posts)
    end
    
    should "be redirected when visiting new" do
      get :new
      assert_response :redirect
      assert_redirected_to new_user_session_path
    end
    
    should "be redirected when creating post" do
      post :create, post: { title: "Boarders are now banned from Claremont leave", content: "Hello, this is a test post for the sake of testing the posts controller" }
      assert_response :redirect
      assert_redirected_to new_user_session_path
    end
    
    should "show post" do
      get :show, id: @post
      assert_response :success
    end
    
    should "be redirected when visiting edit" do
      get :edit, id: @post
      assert_response :redirect
      assert_redirected_to new_user_session_path
    end
    
    should "redirect post update" do
      put :update, id: @post, post: { title: @post.title, content: @post.title }
      assert_response :redirect
      assert_redirected_to new_user_session_path
    end
    
    should "redirect when destroying post" do
      delete :destroy, id: @post
      assert_response :redirect
      assert_redirected_to new_user_session_path
    end
  end

  context "when user signed in" do
    setup do
      sign_in users(:user1)
    end

    should "be redirected when visiting new" do
      get :new
      assert_response :redirect
      assert_redirected_to news_path
      assert !flash[:error].empty?
    end

    should "be redirected when creating post" do
      post :create, post: { title: "Boarders are now banned from Claremont leave", content: "Hello, this is a test post for the sake of testing the posts controller" }
      assert_response :redirect
      assert_redirected_to news_path
      assert !flash[:error].empty?
    end

    should "be redirected when visiting edit" do
      get :edit, id: @post
      assert_response :redirect
      assert_redirected_to news_path
      assert !flash[:error].empty?
    end

    should "redirect post update" do
      put :update, id: @post, post: { title: @post.title, content: @post.title }
      assert_response :redirect
      assert_redirected_to news_path
    end

    should "redirect when destroying post" do
      delete :destroy, id: @post
      assert_response :redirect
      assert_redirected_to news_path
      assert !flash[:error].empty?
    end
  end
  
  context "when admin signed in" do
    setup do
      sign_in users(:admin1)
    end
    
    should "get new" do
      get :new
      assert_response :success
    end
    
    should "create post" do
      assert_difference('Post.count') do
        post :create, post: { content: @post.content, title: @post.title }
      end
  
      assert_redirected_to post_path(assigns(:post))
    end
    
    should "create post for current user" do
      assert_difference('Post.count') do
        post :create, post: { user_id: users(:admin2).id, content: @post.content, title: @post.title }
      end
  
      assert_redirected_to post_path(assigns(:post))
      assert_equal assigns(:post).user_id, users(:admin1).id
    end
    
    should "get edit" do
      get :edit, id: @post
      assert_response :success
    end
    
    should "update post" do
      put :update, id: @post, post: { content: @post.content, title: @post.title }
      assert_redirected_to post_path(assigns(:post))
    end
    
    should "update post for current user" do
      put :update, id: @post, post: { user_id: users(:admin2).id, content: @post.content, title: @post.title }
      assert_redirected_to post_path(assigns(:post))
      assert_equal assigns(:post).user_id, users(:admin1).id
    end
    
    should "not update post if nothing has changed" do
      put :update, id: @post
      assert_redirected_to post_path(assigns(:post))
      assert_equal assigns(:post).user_id, users(:admin1).id
    end
    
    should "destroy post" do
      assert_difference('Post.count', -1) do
        delete :destroy, id: @post
      end
      assert_redirected_to posts_path
    end
  end
end