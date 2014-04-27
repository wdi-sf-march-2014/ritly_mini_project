Ritly::Application.routes.draw do

root 'urls#new'

get '/results', to: 'urls#results'

get '/urls/go/:random', to: 'urls#go', as: :go

resources :urls
end


#   Prefix Verb   URI Pattern                Controller#Action
#     root GET    /                          urls#new
#  results GET    /results(.:format)         urls#results
#       go GET    /urls/go/:random(.:format) urls#go
#     urls GET    /urls(.:format)            urls#index
#          POST   /urls(.:format)            urls#create
#  new_url GET    /urls/new(.:format)        urls#new
# edit_url GET    /urls/:id/edit(.:format)   urls#edit
#      url GET    /urls/:id(.:format)        urls#show
#          PATCH  /urls/:id(.:format)        urls#update
#          PUT    /urls/:id(.:format)        urls#update
#          DELETE /urls/:id(.:format)        urls#destroy