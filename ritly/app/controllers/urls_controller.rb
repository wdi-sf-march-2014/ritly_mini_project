class UrlsController < ApplicationController
	def new
		@url = Url.new
	end

	def create
		@url = Url.create url_params
			if @url.save
				redirect_to url_path(@url)
			else
				redirect_to new_url_path
			end
	end

	def show
		@url = Url.find(params[:id])
		@alias = 'http://localhost:3000/go/' + @url.random_string
	end

	def index
		@urls = Url.all
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

	def alias
		@alias = Url.find_by random_string: params[:alias]
		redirect_to @alias.link
	end

private
	def url_params
		params.require(:url).permit(:link, :random_string)
	end
end
