class HomeController < ApplicationController
  def index
    @posts = Post.last(3).reverse
  end
end
