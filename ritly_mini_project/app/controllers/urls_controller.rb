class UrlsController < ApplicationController

  def index
    @url = Url.new
  end

  def show
    @url = Url.find(params[:id])
  end

  def new
    @urls = Url.all
  end

  def create
      @url = Url.create url_params
      @url.random_string = SecureRandom.base64(4)
      @url.save
    if @url.id != nil
      redirect_to url_path(@url)
    else
      redirect_to root_path  
    end
  end

  def edit
    @url = Url.find(params[:id])
  end

  def update
    @url = Url.find(params[:id])
    @url.update url_params
    redirect_to url_path(@url.id)
  end

  def destroy
    Url.find(params[:id]).destroy
    redirect_to root_path
  end

  def go
   @url = Url.find_by random_string: params[:random_string]
   url = "http://" + @url.link
   redirect_to url
  end

  private
  def url_params
    params.require(:url).permit(:link)
  end

end

# <!--  <%= link_to url.random_string, url_path(url.random_string) %></strong></p>
#   <p>Go to <strong>localhost:3000/<%= @url %></strong> to visit your URL</p> -->

# <!-- <p><%= link_to "Home",urls_path%></p> 
#  -->


# <%= f.submit link_to "Update",  :class => "btn btn-info"%>
# <%= f.submit "Delete", :class => "btn btn-danger"%>
