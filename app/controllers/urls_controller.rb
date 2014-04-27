class UrlsController < ApplicationController

	def index
		@url = Url.new
		#@all_widgets = Widget.all
	end 

	def create
		# expecting @url object from index.html.erb
		# in order to create new Url row with params hash
		token = SecureRandom.urlsafe_base64(3)
		new_url = Url.create(link: params[:url][:link], random_string: token)
	
		render "/"
	end

	def destroy
	end

	def update
	end
end
