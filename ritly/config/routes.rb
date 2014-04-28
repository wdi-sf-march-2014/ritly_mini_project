Ritly::Application.routes.draw do
 root 'urls#new'

 get '/go/:alias', to: 'urls#alias'

 get '/go/:alias/preview', to: 'urls#preview'

 resources :urls
end
