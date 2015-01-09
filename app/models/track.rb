class Track < ActiveRecord::Base

	validates :name, presence: true
	validates :bonus, inclusion: { in: [true, false]}

	belongs_to :album
	has_one :band, through: :album
end
