class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, artist = nil, genre)
    @name = name
    @genre = genre
  end

end
