class Genre 
  attr_reader :name, :genre
  attr_accessor :song
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
 
  def songs 
    song = Song.all.select{|song| song.genre == self}
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists 
    Song.all.map{|song| song.artist}
  end 
 
end 