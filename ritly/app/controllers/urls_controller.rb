class UrlsController < ApplicationController

  before_action :load_url, only: [:new, :create]

  def index
    @url = Url.new
  end

  def create
    # TODO: is there a way to do this in one step?
    # @url = Url.create(url_params, {"ritly_link" => SecureRandom.urlsafe_base64(5)}, {"views_count"=> 0})
    # parameters = {
    # 	ritly_link: SecureRandom.urlsafe_base64(5),
    # 	views_count: 0
    # }
    parameters = url_params
    if params[:url][:ritly_link] == nil || params[:url][:ritly_link] == ""
      parameters[:ritly_link] = SecureRandom.urlsafe_base64(5)
    else
      parameters[:ritly_link] = params[:url][:ritly_link]
    end
    parameters[:views_count] = 0
    @url = Url.create(parameters)
    # binding.pry
    redirect_to url_path(@url)
  end

  def edit
  end

  def preview
    @url = Url.find_by ritly_link:(params[:id])
    redirect_to url_path(@url.id)
  end

  def show
    @url = Url.find(params[:id])
  end

  def show_destination
    @url = Url.find_by ritly_link:(params[:id])
    @url.views_count += 1
    @url.save
    redirect_to (@url.original_link)
  end

  def all_urls
    @urls = Url.all
  end

  def about
  end

  def update
    @url = Url.find(params[:id])
    @url.update url_params
    redirect_to request.referrer
  end

  def destroy
    Url.find(params[:id]).destroy
    redirect_to '/urls/all_urls'
  end

  private
  def load_url
    params.require(:url).permit(:original_link)
  end


  # Prefix Verb   URI Pattern              Controller#Action
  #     root GET    /                        urls#index
  #     urls GET    /urls(.:format)          urls#index
  #          POST   /urls(.:format)          urls#create
  #  new_url GET    /urls/new(.:format)      urls#new
  # edit_url GET    /urls/:id/edit(.:format) urls#edit
  #      url GET    /urls/:id(.:format)      urls#show
  #          PATCH  /urls/:id(.:format)      urls#update
  #          PUT    /urls/:id(.:format)      urls#update
  #          DELETE /urls/:id(.:format)      urls#destroy

end
