class Genre
 attr_accessor :name 
 @@all = []
 
 def initialize(name)
   @name = name
   @@all << @name
   @@all << self
end

def self.all
  self
end 

  def songs
    Song.all.each do |song|
      song.genre == self
    #binding.pry
    end
  end

end