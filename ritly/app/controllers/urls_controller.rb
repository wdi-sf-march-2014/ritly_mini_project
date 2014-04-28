class UrlsController < ApplicationController
	def new
		@urls = Url.new
	end

	def create
		@url = Url.create params.require(:url).permit(:link, :shorthand_link)
		redirect_to url_path(@url)
	end

	def show
		@url = Url.find(params[:id])
		@full_path = "#{request.protocol}#{request.host_with_port}/#{@url.shorthand_link}"
	end

	def go
		@url = Url.find_by_shorthand_link(params[:shorthand_link])
		redirect_to "http://"+ @url.link
	end

end
