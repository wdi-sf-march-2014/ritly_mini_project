class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def new
		@url = Url.new
	end

	def create
		#if new == "http://www."
			#redirect_to root_path
		#else
			@url = Url.create url_params
			redirect_to url_path(@url)
		#end
	end

	def show
		@url = Url.find(params[:id])
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.find(params[:id])
		@url.update url_params
		redirect_to url_path(@url)
	end

	def destroy
		Url.find(params[:id]).destroy
		redirect_to root_path
	end

	def go #redirects to alternate url
		#find 
		@url = Url.find_by random_string: params[:random_string]
		redirect_to @url.link
	end

	private
    # Prepare the params hash for create and update methods.
    def url_params
      params.require(:url).permit(:link, :random_string)
    end

end
