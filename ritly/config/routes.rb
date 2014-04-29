Ritly::Application.routes.draw do
	root 'urls#index'
	get '/go/:id/preview', to: 'urls#preview'
	get '/go/:id', to: 'urls#show_destination'
	get '/urls/all_urls', to: 'urls#all_urls'
	get '/about', to: 'urls#about'
	resources :urls  
end

# Peters-MacBook-Pro:ritly petervarga$ rake routes
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
