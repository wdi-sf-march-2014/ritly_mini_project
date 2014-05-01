class UrlsController < ApplicationController

	def index
		@url = Url.all
		#@all_widgets = Widget.all
	end 

	def new
		@url = Url.new
	end

	def go
		# where the is actually clicked...
	end

	def create
		# expecting @url object from index.html.erb
		# in order to create new Url row with params hash
		token = SecureRandom.urlsafe_base64(3)
		new_url = Url.create(link: params[:url][:link], random_string: token)
		redirect_to urls_path(@url)
		#render 'show'
		#render "/"
	end

	def show
		@url = Url.find(params[:id])
	end

	def destroy
	end

	def update
	end

	private
    def url_params
      params.require(:url).permit(:link, :random_string)
    end
end
