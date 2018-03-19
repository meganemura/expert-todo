class LinkAuthenticationsController < ApplicationController
  def index
    @authentications = LinkAuthentication.all
  end
end
