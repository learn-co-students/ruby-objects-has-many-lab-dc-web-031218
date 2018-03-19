require 'pry'

class Song
	#Belongs to artist object
	attr_accessor :name, :artist

	def initialize(name = nil, artist = nil)
		@name = name
		@artist = artist
		Artist.ALL_SONGS << self
	end

	def artist_name
		self.artist ? self.artist.name : nil
	end

end

