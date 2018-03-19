class ApplicationController < ActionController::Base
  before_action :ensure_logged_in?, unless: :public_page?

  def ensure_logged_in?
    redirect_to root_path
  end

  def public_page?
    true
  end

  def current_user
    user = session[:user]
    return unless user

    @current_user ||= User.find_by(id: user['id'])
  end
  helper_method :current_user
end
