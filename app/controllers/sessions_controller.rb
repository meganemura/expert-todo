class SessionsController < ApplicationController
  def create
    if authentication_token_params
      auth = AuthenticationToken.find_by(token: authentication_token_params[:x])
      if auth
        session[:user] = { id: auth.user_id }

        # TODO: destroy auth

        return redirect_to me_path
      end
    end

    redirect_to root_path
  end

  def authentication_token_params
    params.permit(:x)
  end
end
