class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs << song
    song
  end

  def genres
    self.songs.collect{|song| song.genre}.uniq
  end

  #---class methods---

  def self.all
    @@all
  end

end
