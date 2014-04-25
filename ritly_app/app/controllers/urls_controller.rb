class UrlsController < ApplicationController
	def index
		@urls = Url.all
	end

	def new
		@url = Url.new 
	end

	def show
		@url = Url.find(params[:id])
	end

	def create
		@url = Url.create url_params

		@url.random_string = SecureRandom.urlsafe_base64(7)
		#SecureRandom.random_number(100) 
		@url.save
		redirect_to url_path(@url)
	end

	def go
		@url = Url.find_by random_string:(params["random_string"])
		redirect_to @url[:link]
		#binding.pry
	end

	def edit
	end

	def update
		@url= Url.find(params[:id])
   	 	@url.update url_params
    	redirect_to url_path(@url)
	end

	

	def destroy
    Url.find(params[:id]).destroy
    redirect_to  '/urls'
	end

	private
    def url_params
      params.require(:url).permit(:link, :random_string)
    end

end
