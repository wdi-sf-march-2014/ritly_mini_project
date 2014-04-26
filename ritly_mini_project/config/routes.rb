RitlyMiniProject::Application.routes.draw do
  root 'urls#index'
  get 'urls/go/:random_string' => 'urls#go', as: 'go'
  resources:urls
end
# # root GET    /                        urls#index
#     go   GET    /urls/go/:random_string(.:format) urls#go
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy