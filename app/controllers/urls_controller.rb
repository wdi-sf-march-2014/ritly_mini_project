class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def show
    @url = Url.find(params[:id])
  end

  def create
    #get params from submission
    url_params = params.require(:url).permit(:link)
    #set an extra key and value to save for the url
    #   setting the random string
      if params["url"]["random_string"] == nil 
        url_params[:random_string] = secure_hash 
      else
        url_params[:random_string] = params["url"]["random_string"]
      end
    #save params
    @url = Url.create(url_params)
      if @url[:id] != nil
        redirect_to url_path(@url.id)
      else
        flash[:error] = "Error! Either the URL you entered is invalid or the custom link you chose has already been taken."
        redirect_to root_path
      end
  end

  def edit
    @url = Url.find(params[:id])
  end

  def update
    @url = Url.find(params[:id])
    @url[:random_string] = secure_hash
    @url.update url_params[secure_hash]
    redirect_to url_path(@url.id)
  end

  def go
    @url = Url.find_by random_string: params['random_string']
    if @url.link.start_with?('http://') == true || @url.link.start_with?('https://') == true
      redirect_to @url[:link]
    else
      redirect_to "http://#{@url[:link]}"
    end
  end

  def preview
    @url = Url.find_by random_string: params['random_string']
  end

  def destroy
    Url.find(params[:id]).destroy
    redirect_to '/urls'
  end

  private
    def url_params
      params.require(:url).permit(:link)
    end

    def secure_hash
      secure_hash = SecureRandom.urlsafe_base64(4)
    end

end
