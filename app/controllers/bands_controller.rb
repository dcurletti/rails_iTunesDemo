class BandsController < ApplicationController

	before_action :authenticate

	def index
		@bands = Band.all
	end

	def create
		@band = Band.new(band_params)
	end

	def new
		@band = Band.new
	end

	private
	def band_params
		params.require(:band).permit(:name)
	end
end
