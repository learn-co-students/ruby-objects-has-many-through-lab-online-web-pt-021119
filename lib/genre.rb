class Genre
 attr_accessor :name 
 @@all = []
 
 def initialize(name)
   @name = name
   @@all << @name
   @@all << self
end

def self.all
@@all
end 

  def songs
    Song.all.select {|song| song.genre == self}
    #binding.pry
  end

def artists
  songs.collect do |song|
      song.artist
    #binding.pry
  end
end



  
end