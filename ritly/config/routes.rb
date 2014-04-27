Ritly::Application.routes.draw do
  root 'urls#index'
  # root 'urls#landing'
  #get '/urls', to: 'urls#index'
  resources :urls

get ':random_string',to: "urls#go", as: :go

end
# root_path        GET     /   urls#index
# urls_path        GET     /urls(.:format)   urls#index
# POST                     /urls(.:format)   urls#create
# new_url_path     GET     /urls/new(.:format)   urls#new
# edit_url_path    GET     /urls/:id/edit(.:format)  urls#edit
# url_path         GET     /urls/:id(.:format)   urls#show
# PATCH                    /u rls/:id(.:format)   urls#update
# PUT                      /urls/:id(.:format)   urls#update
# DELETE                   /urls/:id(.:format)   urls#destroy