class Genre
attr_reader :name, :songs, :artists
@@all = []

def initialize(name)
@name = name
@@all << self
@songs = []
@artists = []
end

def self.all
@@all
end

end
