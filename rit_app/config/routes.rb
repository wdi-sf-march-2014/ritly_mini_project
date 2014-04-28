Rails.application.routes.draw do
  
  root 'rits#index'

  get '/rits/go/:random' => 'rits#go', as: "go"


  resources :rits
end
#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        rits#index
#     rits GET    /rits(.:format)          rits#index
#          POST   /rits(.:format)          rits#create
#  new_rit GET    /rits/new(.:format)      rits#new
# edit_rit GET    /rits/:id/edit(.:format) rits#edit
#      rit GET    /rits/:id(.:format)      rits#show
#          PATCH  /rits/:id(.:format)      rits#update
#          PUT    /rits/:id(.:format)      rits#update
#          DELETE /rits/:id(.:format)      rits#destroy

  
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
