class UrlsController < ApplicationController
	
	def index
		redirect_to new_url_path
	end

	def all
		@urls = Url.all
	end

	def show
		@url = Url.find(params[:id])
	end

	def redirect
		@url = Url.find(params[:id])
		redirect_to @url[:link]
	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.create url_params
		if @url.save
			redirect_to url_path(@url)
		else
			render 'new'
		end
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
		@url = Url.find(params[:id])
		@url.destroy
		redirect_to urls_all_path
	end

private
	def url_params
		params.require(:url).permit(:link, :random_string)
	end

end

# Test each route to check for a 200 status (expect(response.status).to be_success or expect(response.status).to eq(200))
# Add model spec tests
# incorporate error messages
# move functions over to model
# include number of times someone used the link (add count to table)
