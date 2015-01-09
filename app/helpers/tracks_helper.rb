module TracksHelper

	def select?(num)
		return "selected" if num == params[:album_id].to_i 
	end

end
