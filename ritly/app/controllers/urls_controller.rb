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
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.update url_params
		redirect_to url_path(@url)
	end

private
	def url_params
		params.require(:url).permit(:link, :random_string)
	end
end
