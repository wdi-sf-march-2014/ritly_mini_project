Ritly::Application.routes.draw do
 root 'urls#new'

 get '/go/:alias', to: 'urls#alias'

 resources :urls
end
