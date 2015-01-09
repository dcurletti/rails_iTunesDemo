class BandsController < ApplicationController

	before_action :authenticate

	def index
		@bands = Band.all
	end

	def create
		@band = Band.new(band_params)
		if @band.save
			redirect_to band_url(@band), notice: "Successfully added #{@band.name}!" 
		else
			render :new, alert: "Unable to create #{@band.name}"
		end
	end

	def new
		@band = Band.new
	end

	def show
		@band = Band.find(params[:id])
	end

	def update
		
	end

	def destroy
		@band = Band.find(params[:id])
		if @band.destroy
			redirect_to bands_url, alert: "#{@band.name} successfully deleted."
		else
			flash[:alert] = "Unable to deleted #{@band.name}"
			render :show
		end
	end

	private
	def band_params
		params.require(:band).permit(:name)
	end
end
