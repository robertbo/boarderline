require 'test_helper'

class PostTest < ActiveSupport::TestCase
  context "new posts title" do
    should "exist" do
      post = Post.new
      post.content = posts(:one).content

      assert !post.save
      assert !post.errors[:title].empty?
    end

    should "contain less than 100 characters" do
      post = Post.new
      post.content = posts(:one).content

      post.title = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis bibendum nibh mollis lobortis.."

      assert !post.save
      assert !post.errors[:title].empty?
    end
  end

  context "new posts content" do
    should "exist" do
      post = Post.new
      post.title = posts(:one).title

      assert !post.save
      assert !post.errors[:content].empty?
    end

    should "contain at least 20 characters" do
      post = Post.new
      post.title = posts(:one).title

      post.content = "Less than 20"

      assert !post.save
      assert !post.errors[:content].empty?
    end
  end
end
