class Artist
attr_accessor :name, :genres, :songs
@@all = []

def initialize(name)
@name = name
@@all << self
@songs = []
@genres = []
end

def self.all
 @@all
end

def new_song(name, genre)
 new_song = Song.new(name, self, genre)
 @songs << new_song
 Song.all << new_song
 @genres << genre
 new_song
 end

end
