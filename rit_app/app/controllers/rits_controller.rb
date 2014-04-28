class RitsController < ApplicationController

	def index
		@rit = Rit.new
	end

	def show
		@rit = Rit.find(params[:id])
	end

	def edit
		@rit = Rit.find(params[:id])
		# if @rits.id != nil
		# redirect_to root_path
		# end
	end

	def update
		@rit = Rit.find(params[:id])
		@rit.update rit_params
		redirect_to rit_path(@rit)
	end

	def new
		@rits = Rit.all
	end

	def create
		@rit = Rit.create rit_params
		if @rit.id != nil
		@rit.random = SecureRandom.urlsafe_base64(8)
		@rit.save
		redirect_to rit_path(@rit)
		else
		redirect_to root_path
		end	
	end

	def destroy
		Rit.find(params[:id]).destroy
		# redirect_to root_path
		redirect_to :back
	end


	def go
		@rit = Rit.find_by random: params[:random]
		@url = "http://" + @rit.link
		if @rit.link.start_with?("http://") || @rit.link.start_with?("https://")
			redirect_to @rit.link
		else
			redirect_to @url
		end
	end

private
	def rit_params
		params.require(:rit).permit(:link)
	end

end

