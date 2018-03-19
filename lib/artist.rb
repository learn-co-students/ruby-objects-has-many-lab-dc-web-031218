require 'pry'
require_relative 'song.rb'

class Artist
	attr_accessor :name, :songs

	ALL_SONGS=[]
	@@song_count = 0

	#Has many song objects
	def initialize(name = nil)
		@name = name
		@songs = []
	end


	#Create song obj, add it to collection
	def add_song_by_name(name)
		song = Song.new(name)
		song.artist= self
		@songs << song
		song
	end

	#Instance song count
	def song_count
		songs.length
	end

	def add_song(song_obj)
		self.songs << song_obj
		song_obj.artist = self 
	end

	#Class methods 
	def self.ALL_SONGS
		ALL_SONGS
	end

	def self.song_count
		@@song_count = ALL_SONGS.length
	end
end


puts "Hello"