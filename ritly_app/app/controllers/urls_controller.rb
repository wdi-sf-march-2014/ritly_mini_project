class UrlsController < ApplicationController

	def index
		@url = Url.new
	end

	def create
		 @url = Url.create params.require(:url).permit(:link, :random_string)
		 @url['random_string']=SecureRandom.hex(3)
		 @url.save
   		 redirect_to url_path(@url)
	end


	def show
		@url = Url.find(params[:id])
	end

	def list
		@urls=Url.all
	end

	def destroy
  		Url.find(params[:id]).destroy
   		redirect_to root_path
  	end


end