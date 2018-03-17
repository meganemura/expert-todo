class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new
    user.link_authentications.build(email: "#{SecureRandom.uuid}@example.com", volatile_token: SecureRandom.uuid)
    user.save
    session[:user] = { id: user.id }
    redirect_to me_path
  end

  def show
  end
end
