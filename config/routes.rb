RitlyApp::Application.routes.draw do
  root 'urls#index'

  resources :urls

  # require 'securerandom'
  # token = SecureRandom.urlsafe_base64
  # p token
end
