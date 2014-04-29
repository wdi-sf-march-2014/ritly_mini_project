class UrlsController < ApplicationController
	def index
    	@urls = Url.all
  	end
  	def new
  		@urls = Url.new
  	end

  	def results
  		@urls = Url.all
  	end

  	def create
  		generated_string = SecureRandom.urlsafe_base64(100)
  		temp = Url.create(url_params)
  		temp.random_string = generated_string 
  		temp.save
  		last = Url.last.id 
  		redirect_to url_path(last)
  	end
  	def edit
  		@urls = Url.find(params[:id])
  	end

  	def update
  		@url = Url.find(params[:id])
  		@url.update url_params
  		redirect_to url_path(@url)
  	end

  	def show
  		@url = Url.find(params[:id])	
  	end

  	def destroy
  		Url.find(params[:id]).destroy
  		redirect_to root_path
  	end

  	def go
  		@url = Url.find_by_random_string(params[:random_string])
  		redirect_to "http://"+  @url.link
  	end

  	private

  	def url_params
  		params.require(:url).permit(:link)
  	end
end
