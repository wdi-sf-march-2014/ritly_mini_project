class UrlsController < ApplicationController
	def show_all
		@urls = Url.all
	end

	def show
		@url = Url.find(params[:id])
	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.create 
		redirect_to url_path(@url)
	end



	private
		def url_params
			params.require(:url).permit(:link, :user_string)
			#Write a seperate method for :user_string to be used?
		end

end
