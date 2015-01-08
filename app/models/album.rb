class Album < ActiveRecord::Base

	validates :band_id, :track_id, :live, presence: true
end
