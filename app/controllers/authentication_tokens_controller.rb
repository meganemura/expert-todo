class AuthenticationTokensController < ApplicationController
  def index
    @tokens = AuthenticationToken.all
  end
end
