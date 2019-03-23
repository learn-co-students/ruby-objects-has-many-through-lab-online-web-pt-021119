require 'pry'

class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    songs << song
    # binding.pry
  end

  def songs
    @songs
  end

end
