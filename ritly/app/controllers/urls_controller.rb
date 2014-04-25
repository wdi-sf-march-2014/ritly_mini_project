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
    #generate secure hash
    secure_hash = SecureRandom.urlsafe_base64(4)

    #get params from submission
    url_params = params.require(:url).permit(:link)
    #set an extra key and value to save for the url
    #   setting the random string 
    url_params[:random_string] = secure_hash

    #save params
    @url = Url.create(url_params)

    redirect_to url_path(@url.id)
  end

  def edit
    @url = Url.find(params[:id])
  end


  # def random_generator(p)
  #   p = SecureRandom.urlsafe_base64(4)
  # end


#   def edit
#     @grocery = Grocery.find(params[:id])
#   end

#   def update
#     @grocery = Grocery.find(params[:id])
#     @grocery.update groc_params
#     redirect_to grocery_path(@grocery.id)
#   end
  def destroy
    Url.find(params[:id]).destroy
    redirect_to '/urls'
  end
end
