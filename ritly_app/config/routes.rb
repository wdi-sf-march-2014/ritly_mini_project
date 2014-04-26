RitlyApp::Application.routes.draw do
  root to: 'urls#new'
  get '/urls/go/:random_string' => 'urls#go', as: 'go'
  resources :urls
end


# taylorchiu:ritly_app TPCMacbookAir$ rake routes
#   Prefix Verb   URI Pattern                       Controller#Action
#     root GET    /                                 urls#new
#     urls GET    /urls(.:format)                   urls#index
#          POST   /urls(.:format)                   urls#create
#  new_url GET    /urls/new(.:format)               urls#new
# edit_url GET    /urls/:id/edit(.:format)          urls#edit
#      url GET    /urls/:id(.:format)               urls#show
#          PATCH  /urls/:id(.:format)               urls#update
#          PUT    /urls/:id(.:format)               urls#update
#          DELETE /urls/:id(.:format)               urls#destroy
#       go GET    /urls/go/:random_string(.:format) urls#go




# RouteApp::Application.routes.draw do
#   root to: 'planes#index'     # same as get '/', to: "planes#index" but better bc it defines the 'root'

#   get '/planes', to: 'planes#index'

#   get '/planes/new', to: 'planes#new'     # page with a form for adding a new plane

#   post '/planes', to: 'planes#create'       # 'post' method adds the plane to a database 

# end