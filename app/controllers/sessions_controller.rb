class SessionsController < ApplicationController
  def login
    session[:oauth_token] = params[:oauth_token]
    session[:oauth_verifier] = params[:oauth_verifier]
  end

  def logout
    reset_session
    redirect_to root_path
  end
end
