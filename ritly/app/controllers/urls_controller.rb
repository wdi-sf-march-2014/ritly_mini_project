class UrlsController < ApplicationController

  def index
    @urls = Url.all
     @url = Url.new
  end

  def new
    @urls = Url.all
    @url = Url.new
  end

  def create
    url_params = params.require(:url).permit(:link)
    url_params["random_string"] = SecureRandom.hex(3)
    @url = Url.create url_params
   
    redirect_to url_path(@url)
  end

  def show

    @url = Url.find(params[:id])
    # redirect_to url_path(@url)
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
    redirect_to new_url_path
  end

  def go
    @url = Url.find_by_random_string(params[:random_string])
    redirect_to "http://" + @url.link
  end

   private
    def url_params
      params.require(:url).permit(:link)  
    end

end
