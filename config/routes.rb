Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # added for minimal security around adding trusted client apps for oauth
  get '/access_oauth_client_apps', to: 'doorkeeper_client_authorization_#access_oauth_client_apps'
end
