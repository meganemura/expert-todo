class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new
    user.link_authentications.build(email: user_params[:email], volatile_token: SecureRandom.uuid)
    if user.save
      session[:user] = { id: user.id }
      redirect_to me_path
    else
      redirect_to root_path
    end
  end

  def show
  end

  def user_params
    params.permit(:email)
  end
end
