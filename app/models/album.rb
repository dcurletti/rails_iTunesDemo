class Album < ActiveRecord::Base

	validates :band_id, :name, presence: true
	validates :live, inclusion: { in: [true, false]}

	belongs_to :band

	has_many :tracks
end
