class Artist

attr_accessor :name, :genre

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_song(name, genre)
Song.new(self, name, genre)
end

def songs
Song.all.select do |one_song|
  one_song.artist == self
end
end

def genres
songs.map do |song|
  song.genre
end
end 


end
