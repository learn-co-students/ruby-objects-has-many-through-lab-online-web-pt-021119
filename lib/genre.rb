class Genre
  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artists = []
  end

end
