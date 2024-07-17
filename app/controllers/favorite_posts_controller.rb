class FavoritePostsController < ApplicationController

  def create
    @favorite_post = FavoritePost.new()
    @favorite_post.user_id = params[:user_id]
    @favorite_post.post_id = params[:post_id]
    
    if @favorite_post.save
      render template: "favorite_posts/show"
    else
      render json: {ERRORS: @favorite_post.errors.full_messages}
    end
  end

  def destroy
    # raise StandardError, "For testing purposes"
    @favorite_post = FavoritePost.find_by(id: params[:id])
    if @favorite_post.destroy
      render json: {message: "This will destroy your world"}
    else
      render json: { ERRORS: @favorite_post.errors.full_messages}
    end
  end
end
