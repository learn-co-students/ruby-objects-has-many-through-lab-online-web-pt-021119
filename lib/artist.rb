require "pry"
class Artist 
  attr_accessor :name 
  attr_reader :songs 
  
  @@all= []
  
  def initialize(name)
    @name=name 
    @songs=[] #array of songs every time a new song created
    @@all << self 
  end 
  def self.all
    @@all
  end 
  def new_song(name, genre)
 song=Song.new(name, self, genre)
 self.songs << song
 song
  end
  def genres 
    self.songs.collect do |song|
      #song.genre == self 
      song.genre
    end 
  end 
    
  end 
  
