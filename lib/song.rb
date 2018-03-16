class Song
  attr_accessor :name, :artist

  @@all_songs = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all_songs << self
  end

  def self.all_songs
    @@all_songs
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
