class UrlsController < ApplicationController

	def index
		@urls = Url.all
	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.create url_params
		redirect_to url_path(@url)
	end

	def show
		@url = Url.find(params[:id])
		#redirect_to
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

	private
    # Prepare the params hash for create and update methods.
    def url_params
      params.require(:url).permit(:link, :random_string)
    end

end
