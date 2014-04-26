class UrlsController < ApplicationController

	def new
		@url = Url.new
	end

	def create
		@url = Url.create url_params
		if @url.id != nil
			@url['random_string'] = SecureRandom.urlsafe_base64(8)
			@url.save
			redirect_to url_path(@url.id)
		else
			redirect_to root_path
		end
	end

	def show
    @url = Url.find(params[:id])
	end

	def go
		# need to set the variable url to the instance of Url.find(params[:random_string]) so that it is the link they originaly pasted
		@url = Url.find_by random_string: params[:random_string]
		url = "http://" + @url['link']
		redirect_to url
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.find(params[:id])
		@url.update url_params
		redirect_to url_path
	end


	def index
		@urls = Url.all
	end

	def destroy
   Url.find(params[:id]).destroy
   redirect_to urls_path
  end

	private
	def url_params
		params.require(:url).permit(:link)
	end

end
