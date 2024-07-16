class FavoritePostsController < ApplicationController

  def create
    render json: {message: "Hello"}
  end

  def destroy
    render json: {message: "This will destroy your world"}
  end
end
