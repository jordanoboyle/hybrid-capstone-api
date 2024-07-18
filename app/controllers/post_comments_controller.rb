class PostCommentsController < ApplicationController
  # before_action :authenticate_user, only: [:update, :destroy, :create]

  def index
    @post_comments = PostComment.all
    render template: "post_comments/index"
  end

  def show
    @post_comment = PostComment.find_by(id: params[:id])
    render template: "post_comments/show"
  end

  def create
    @post_comment         = PostComment.new()
    @post_comment.user_id = param[:user_id]
    @post_comment.post_id = param[:post_id]
    @post_comment.body    = param[:boby]

    if @post_comment.save!
      render template: "post_comments/show"
    else
      render json: {ERRORS: @post_comment.errors.full_messages}
    end
  end

  def update
    @post_comment         = PostComment.find_by(id: params[:id])
    @post_comment.body    = params[:body]

    if @post_comment.save!
      render template: "post_comments/show"
    else
      render json: {ERRORS: @post_comment.errors.full_messages}
    end
    
  end

  def destroy
    @post_comment = PostComment.find_by(id: params[:id])
    
    if @post_comment.destroy
      render json: { message: "Comment has been removed" }
    else
      render json: {message: "Comment could not be removed", ERRORS: @post_comment.errors.full_messages}
    end
  end
end
