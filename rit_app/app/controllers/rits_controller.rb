class RitsController < ApplicationController

	def index
		@rit = Rit.new
	end

	def show
		@rit = Rit.find(params[:id])#should this link?
	end

	def edit
		@rit = Rit.find(params[:id])
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
		@rit.random = SecureRandom.urlsafe_base64(8)
		@rit.save
		# if @rit.link == nil
		redirect_to rit_path(@rit)
	end

	def destroy
		Rit.find(params[:id]).destroy
		redirect_to root_path
	end

	def go
		
		@rit = Rit.find_by random: params[:random]
		redirect_to @rit.link
	end

private
	def rit_params
		params.require(:rit).permit(:link)
	end

end

