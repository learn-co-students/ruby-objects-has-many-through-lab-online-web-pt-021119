require "pry"
class Genre 
  attr_accessor :name
  @@all= []
  def initialize(name)
    @name=name
    @@all << self 
  end 
  def self.all 
    @@all
  end 
 #binding.pry 
  def songs
    Song.all.select do |song|
      song.genre == self 
    end 
  end 
  def artists 
    #reference the songs array to get the instance this method is being passed to artist 
    self.songs.map do |song| 
    song.artist 
    
  end 
end 
end 