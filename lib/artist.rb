class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(song, genre)
    Song.new(song, self, genre)
  end
  
  def songs 
    Song.all.select { |x| x.artist == self }
  end
  
  def genres 
    songs.collect { |x| x.genre }
  end
  
end