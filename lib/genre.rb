class Genre
  attr_writer :artists, :songs
  attr_accessor :name

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artists = []
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      @songs << song if song.genre == self
    end
  end

  def artists
    Artist.all.select do |artist|
      # binding.pry
      @artists << artist if artist.genres.include?(self)
    end
  end

end
