class SessionsController < ApplicationController
  def create
    if link_authentication_params
      auth = LinkAuthentication.find_by(volatile_token: link_authentication_params[:x])
      if auth
        session[:user] = { id: auth.user_id }

        # TODO: destroy auth

        return redirect_to me_path
      end
    end

    redirect_to root_path
  end

  def link_authentication_params
    params.permit(:x)
  end
end
