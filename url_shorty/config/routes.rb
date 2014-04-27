UrlShorty::Application.routes.draw do

  root to: 'urls#index'

  get 'urls/all', to: 'urls#all'

  get 'urls/:id/redirect', to: 'urls#redirect', as: 'redirect_url'

  resources :urls

  get 'go/:id', to: 'urls#redirect'

  get 'go/:id/preview', to: 'urls#show'

end