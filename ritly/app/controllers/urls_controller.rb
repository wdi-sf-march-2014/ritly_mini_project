class UrlsController < ApplicationController
	def index 
		@urls = Url.all 
	end
	def new
		@url = Url.new
	end

	def create
		@url = Url.new url_params
		if @url.save
			redirect_to url_path(@url)
		else
			render :new
		end
	end

	def show
		@url = Url.find(params[:id])
		@full_path = "#{request.protocol}#{request.host_with_port}/#{@url.shorthand_link}"
	end

	def go
		@url = Url.find_by_shorthand_link(params[:shorthand_link])
		redirect_to "http://"+ @url.link
	end

	private 
	def url_params
		params.require(:url).permit(:link, :shorthand_link)
	end

end
