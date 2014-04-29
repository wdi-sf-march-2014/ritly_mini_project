Ritly::Application.routes.draw do
  
  root 'urls#new'

  get '/results', to: "urls#results"
  #get '/', to: "urls#index"
  # get '/show', to: "urls#show"
  # get '/preview', to: "urls#preview"
  get '/urls/go/:random_string', to: 'urls#go', as: :go
  resources :urls

#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        urls#index
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy
end
