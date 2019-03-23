require 'pry'

class Artist
  attr_writer :songs, :genres
  attr_accessor :name

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
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      @songs << song if song.artist == self
    end
  end

  def genres
    Song.all.select do |song|
      binding.pry
      @genres << song.genre if song.artist == self
    end
  end

end
