RitlyApp::Application.routes.draw do
  root 'urls#index'

  resources :urls

end
