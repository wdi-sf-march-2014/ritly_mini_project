class UrlsController < ApplicationController

	def index
		@url = Url.new
	end 

	def create
		# expecting @url object from index.html.erb
		# in order to create new Url row with params hash
	end

	def destroy
	end

	def update
	end
end
