class UrlsController < ApplicationController

	def index
		@urls=Url.all
	end
	
	def new
		@url = Url.new
	end

	def new_custom
		@url= Url.new
		@error=false
	end

	def create
		@urls=Url.all
		codes=[]
		@urls.each do |url| 
			codes<<url.random_string
		end

		@url = Url.create params.require(:url).permit(:link, :random_string)
		
		if codes.include?(@url.random_string)
			@url.destroy
			redirect_to error_path
		else
		
   		if @url['random_string'] == nil || @url['random_string'] == ''
   		   @url['random_string']=SecureRandom.urlsafe_base64(4)
	  	   @url.save
	  	end
	  	   @url['link'] = "http://"+@url['link']
	  	   @url.save
   			 redirect_to url_path(@url)
   		end 
   		#end of main if else stmt
	end

	def show
		@url = Url.find(params[:id])
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.find(params[:id])
    	@url.update params.require(:url).permit(:link, :random_string)
    	redirect_to url_path(@url)
	end

	def go
		#@url = Url.find_by_random_string(params[:random_string])
		@url = Url.find_by(random_string:params[:random_string])
		outside_url = @url['link']
		redirect_to outside_url
	end

	def preview
		@url = Url.find_by(random_string:params[:random_string])
	end

	def destroy
  		Url.find(params[:id]).destroy
   		redirect_to root_path
  	end


end