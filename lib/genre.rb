class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|songs| songs.genre == self}
  end

  def artists
    songs.map{|songs| songs.artist}
  end
end
