class UrlsController < ApplicationController

  def index
     @url = Url.all
  end
  
  def show 
      @url = Url.find(params[:id])
  end
  
  def new
     @url = Url.new
  end
  #def go
     #binding.pry
    # @url = Url.find_by random_string: params['random_string']
    
  # end
   def create
      @url = Url.create url_params
     if @url.id != nil
        @url.random_string = SecureRandom.urlsafe_base64(8)
        @url.save
        redirect_to url_path(@url)
      else
         
         redirect_to new_url_path
      end
   end
   def redirection
   # binding.pry
        @url = Url.find_by_random_string(params[:random_string])
         redirect_to "http://"+ @url.link
   end
   def destroy
      Url.find(params[:id]).destroy
      redirect_to root_path
    end
 private
    def url_params 
            params.require(:url).permit(:link)
     end
  
  
end

