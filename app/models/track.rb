class Track < ActiveRecord::Base

	validates :name, :bonus, presence: true
end
