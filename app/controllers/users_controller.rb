class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new
    user.build_authentication_token(email: user_params[:email])
    user.save
    redirect_to root_path
  end

  def show
  end

  def user_params
    params.permit(:email)
  end
end
