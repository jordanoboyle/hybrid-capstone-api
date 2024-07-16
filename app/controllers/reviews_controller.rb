class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render template: "reviews/index"
  end
  
  def show
    @review= Review.find_by(id: params[:id])
    render template: 'reviews/show'
  end

  def create
    @review = Review.new(
    user_id: params[:user_id],
    game_title: params[:game_title],
    subtitle: params[:subtitle],
    genre_id: params[:genre_id],
    systems: params[:systems],
    body: params[:body],
    rating: params[:rating],
    )
    if @review.save
      render template: "reviews/show"
    else
      render json: {ERRORS: @review.errors.full_messages}
    end
  end

  def update
    @review = Review.find_by(id: 10)
    @review.game_title =  params[:game_title] || @review.game_title
    @review.subtitle =  params[:subtitle] || @review.subtitle
    @review.genre_id =  params[:genre_id] || @review.genre_id
    @review.systems =  params[:systems] || @review.systems
    @review.body =  params[:body] || @review.body
    @review.rating =  params[:rating] || @review.rating

    if @review.save 
      render template: "reviews/show"
    else
      render json: {ERRORS: @review.errors.full_messages}
    end
  end

  

end
