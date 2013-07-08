class PicturesController < ApplicationController 

	
	def show
		@picture = Picture.find(params[:id])

	end 

	def index
		@pictures = Picture.all
	end 

	def new 
		@picture = Picture.new

	end 

	def create

		@picture = Picture.new(params[:picture])
		if @picture.save
			redirect_to pictures_url 
		else 
			render :new 
		end 

	end 



	
end

