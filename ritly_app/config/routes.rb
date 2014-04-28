RitlyApp::Application.routes.draw do

root 'urls#new'

get '/urls/new_custom', to: 'urls#new_custom', as: :new_custom
get '/urs/error', to: 'urls#error', as: :error
get '/go/:random_string', to: 'urls#go'
get '/go/:random_string/preview', to: 'urls#preview', as: :preview

resources :urls
end

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

#NOTE rake db:reset deteles all entries and re-seeds table