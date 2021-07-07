class Song

  attr_accessor :artist, :name, :genre

@@songs = []

def initialize(artist, name, genre)
@artist = artist
@name = name
@genre = genre
@@songs << self
end

def self.all
  @@songs
end

end
