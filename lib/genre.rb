class Genre
  
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def songs 
    Song.all.select { |b| b.genre == self }
  end

  def artists
    songs.collect { |b| b.artist }
  end
  
end