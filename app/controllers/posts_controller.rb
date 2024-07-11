class PostsController < ApplicationController

  def index
    @posts = Post.all
    render template: "posts/index"
  end

  def show
    @post = Post.find_by(id: params[:id])
    render template: "posts/show"
  end

  def create
    @post = Post.new(
    user_id: params[:user_id],  ## Modify to current_user_id
    title: params[:title],
    game_title: params[:game_title],
    genre_id: params[:genre_id],
    system_id: params[:system_id],
    body: params[:body]
    )
    if @post.save
      render template: "posts/show"
    else
      render json: { ERRORs: @post.errors.full_messages }
    end
  end

  def update
    @post = Post.find_by(id: 13)
    @post.user_id = params[:user_id]  || @post.user_id
    @post.title = params[:title]  || @post.title
    @post.game_title = params[:game_title]  || @post.game_title
    @post.genre_id = params[:genre_id]  || @post.genre_id
    @post.system_id = params[:system_id]  || @post.system_id
    @post.body = params[:body]  || @post.body

    if @post.save
      render template: "posts/show"
    else
      render json: {message: @post.errors.full_messages}
    end
  end
end
