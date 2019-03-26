class Song
attr_accessor :name, :genre, :artist
@@all = []

def initialize(name,artist,genre)
@name = name
@genre = genre
@artist = artist
@@all << self
@genre.songs << self
@genre.artists << @artist
end

def self.all
 @@all
end

end
