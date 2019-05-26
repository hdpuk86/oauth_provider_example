class DoorkeeperClientAuthorizationController < ApplicationController
  http_basic_authenticate_with name: ENV['CLIENT_USER'], password: ENV['CLIENT_PASSWORD']

  def access_oauth_client_apps
    redirect_to oauth_applications_path
    session[:oauth_applications] = true
  end
end
