module AlbumsHelper

	def select?(num)
		return "selected" if num == params[:band_id].to_i 
	end

	def bonus?(track)
		track ? "Yes" : "No"
	end

end
