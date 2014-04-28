RitlyApp::Application.routes.draw do
  root 'urls#new'

  resources :urls

  get 'urls/go/:random_string' => 'urls#go'

end


# Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        urls#new
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy