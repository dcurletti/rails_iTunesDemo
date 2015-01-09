class AlbumsController < ApplicationController

	before_action :authenticate

	def new
		@album = Album.new
	end

	def create
		fail
		@album = Album.new(album_params)
		if @album.save
			redirect_to album_url(@album), notice: "Album #{@album.name} successfully created"
		else
			render :new, alert: "Unable to create album."
		end
	end

	private
	def album_params
		params.require(:albums).permit(:band_id, :live, :name)
	end
end
