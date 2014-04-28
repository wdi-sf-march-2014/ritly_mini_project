Ritley::Application.routes.draw do
	root 'urls#new'

	resources :urls

	# get 'urls/:id', :to 'urls#go'
	# redirect_to go(@url.)
	get '/:shorthand_link', to: 'urls#go', as: :go
  	# get '/:shorthand_link/preview', to: 'urls#preview', as: :go
end
