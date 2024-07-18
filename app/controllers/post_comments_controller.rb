class PostCommentsController < ApplicationController

  def index
    @post_comments = PostComment.all
    render template: "post_comments/index"
  end

  def show
    @post_comment = PostComment.find_by(id: params[:id])
    render template: "post_comments/show"
  end

  def create

    render json: { message: "Hello there from Create" }
  
  end

  def update
    render json: { message: "Hello there from Update" }
  end

  def destroy
    render json: { message: "Hello there from Destroy" }
  end
end
