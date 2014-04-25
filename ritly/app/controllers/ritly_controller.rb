class RitlyController < ApplicationController
  def index

  end
  def new
    
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end
  def update
    
  end

  def destroy
    
  end

   private
    def url_params
      params.require(:url).permit(:link)  
    end
end
