class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end

  def self.song_count
    @@song_count = Song.all_songs.count
    @@song_count
  end
end

# is a class method that returns the total number of songs associated to all existing artists
