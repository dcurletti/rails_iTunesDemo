class TracksController < ApplicationController

	def new
		@track = Track.new()
	end

	def create
		@track = Track.new(album_params)
		if @track.save
			redirect_to album_url(@track.album), notice: "Track #{@track.name} successfully created"
		else
			render :new, alert: "Unable to create track."
		end
	end

	def show
		@track = Track.find(params[:id])
	end

	private
	def album_params
		params.require(:track).permit(:name, :bonus, :lyrics, :album_id)
	end

end
