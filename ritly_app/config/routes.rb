Rails.application.routes.draw do

root 'urls#new'
resources :urls

#get '/go/:random_string', to: 'urls#go'


# Redirect to actual page: 
# route: 

get 'urls/go/:random_string', to: 'urls#go', as: :go

end

# Jeffs-MacBook-Pro-2:ritly_app Jeff$ rake routes
#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        urls#new
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
