class HomeController < ApplicationController
  def index
    @posts = Post.last(5).reverse
  end
end
