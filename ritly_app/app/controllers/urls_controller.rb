class UrlsController < ApplicationController
	
	def index
  	@urls = Url.all
    end	

	def new
	 @url = Url.new
	end

	def create
     # Creates a url item in the database with the information passed in
     # the params hash. Redirects to the show page using the todo_path
     # and passing the @url object.
    
     # binding.pry
     @url = Url.create url_params
     redirect_to url_path(@url)
	end

	def show
     # Retrieves a specific item from the database. The id of the item is in
     # the params hash.  Place the item in the @todo instance variable for 
     # the show.html.erb page.

     # binding.pry
     @url = Url.find(params[:id])
     #SHOWS ONE INSTANCE
    end

    def edit
        
    end    

    private
    def url_params
        params.require(:url).permit(:link, :random_string)
    end    

end


