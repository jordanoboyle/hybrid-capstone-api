class UsersController < ApplicationController
  # before_action :authenticate_admin, only: [:index]
  before_action :authenticate_user, only: [:update, :destroy, :show]

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render json: {message: "User creation confirmed"}, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all()
    render template: "users/index"
  end

  def show
    @user = User.find_by(id: current_user.id)
    render template: "users/show"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.username = params[:username] || @user.username
    @user.prof_image = params[:prof_image] || @user.prof_image
    @user.about_me = params[:about_me] || @user.about_me
    # p @user
    # p @user.valid?
    # @user.save
    # p @user.errors.full_messages
    # # binding.pry
    if @user.save
      render template: "users/show"
    else
      render json: { ERRORS: @user.errors.full_messages }
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    
    if @user.destroy
      render json: {message: "Account has been removed"}
    else
      render json: {ERRORS: @user.errors.full_messages}
    end
  end

  ##POTENTIALLY A NEW PATH TO UPDATE PASSWORD: OR ADD TO SAME UPDATE FUNCTION ABOVE (HANDLE ON FRONTEND)

end
