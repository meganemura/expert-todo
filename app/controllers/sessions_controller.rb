class SessionsController < ApplicationController
  def create
    if link_authentication_params
    end

    redirect_to root_path
  end

  def link_authentication_params
    params.permit(:x)
  end
end
