class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def show
		@url = Url.find(params[:id])
	end 

	def new
		@url = Url.new
	end

	def create
	     @url = Url.create url_params
	    if @url.id != nil
	        @url.random_string = SecureRandom.urlsafe_base64(8)
	        @url.save
	        redirect_to url_path(@url)
	    else
	        redirect_to new_url_path
	    end
	end

	def edit 
		@url = Url.find(params[:id])
	end


	# def go
	# 	binding.pry
	# 	@url = Url.find_by random_string: params['random_string']
	# 	redirect_to @url[:link]
	# end

# UrlsController code for redirect to actual page; alternative: 
		
# Old version: 
	# def go 
	# 	@url = Url.find_by_random_string(params[:random_string]
	# 	redirect_to @url.link
	# end

def go
  # binding.pry
        @url = Url.find_by_random_string(params[:random_string])
        redirect_to @url.link
end

# Old version: 
	# def create
	# url_params = params.require(:url).permit(:link)
	# url_params[:random_string] = SecureRandom.urlsafe_base64(7)
	# @url = Url.create url_params 
 #    redirect_to @url
	# end




private 
	def url_params
		params.require(:url).permit(:link)
	end
end
