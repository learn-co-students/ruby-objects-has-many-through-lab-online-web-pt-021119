class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre, artist = nil)
    @name = name
    @genre = genre
  end
end
