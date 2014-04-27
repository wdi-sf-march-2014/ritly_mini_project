class UrlsController < ApplicationController

	def new
		@url = Url.new
	end

	def create
        num_gen = SecureRandom.urlsafe_base64(4)
        temp = Url.create(url_params)
        temp.random = num_gen
        temp.save
        last = Url.last.id
        redirect_to url_path(last)
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.find(params[:id])
		@url.update params.require(:url).permit(:link, :random)
		redirect_to url_path(@url)
	end

	def show
		@url = Url.find(params[:id])
	end

	def destroy
		Url.find(params[:id]).destroy
		redirect_to root_path
	end

	def results
		@url = Url.all
		# count=@url.countclicks+1
		# @url.update_attributes(:countclicks=> count)
	end

	def go
		@url = Url.find_by_random(params[:random])
		redirect_to "http://"+ @url.link
	end

  private
    def url_params
      params.require(:url).permit(:link)
    end

end
