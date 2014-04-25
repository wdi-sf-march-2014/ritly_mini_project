class UrlsController < ApplicationController
	
	def index
  	@urls = Url.all
    end	

	def new
	 @url = Url.new
	end

	def create
     
    
     # binding.pry
     @url = Url.create url_params 
     @url['random_string'] = SecureRandom.base64(8) 
     @url.save
     redirect_to url_path(@url)
	end

	def show
     

     # binding.pry
     @url = Url.find(params[:id])
     #SHOWS ONE INSTANCE
    end

    def edit
        @url = Url.find(params[:id])
    end    

    def update
        @url = Url.find(params[:id])
        @url.update url_params
        redirect_to url_path
    end    
    
    def go
        @redirect = Url.find_by random_string:(params["random_string"])
        redirect_to @redirect[:link]
    end    

    def destroy
        Url.find(params[:id]).destroy
        redirect_to '/urls'
    end    
    

    private
    def url_params
        params.require(:url).permit(:link)

    end



end


