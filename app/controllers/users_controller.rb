class UsersController < ApplicationController


  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all()
    render template: "users/index"
  end

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def update
    @user = User.find_by(id: 7)
    @user.first_name = "Test First name change"

    if @user.save
      render template: "users/show"
    else
      render json: { ERRORS: @user.errors.full_messages }
    end
  end

end
