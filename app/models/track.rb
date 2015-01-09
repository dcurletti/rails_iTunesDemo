class Track < ActiveRecord::Base

	validates :name, :album_id, presence: true
	validates :bonus, inclusion: { in: [true, false]}

	belongs_to :album
	has_one :band, through: :album
end
