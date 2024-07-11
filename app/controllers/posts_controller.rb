class PostsController < ApplicationController

  def index
    @posts = Post.all
    render template: "posts/index"
  end

  def show
    @post = Post.find_by(id: 2)
    render template: "posts/show"
  end
end
