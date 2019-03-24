class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    # def songs
    #     Song.all.select do |song|
    #         song.artist == self
    #     end
    # end

    # def genre
    #     if genre
    #         genre.name
    #     end
    # end

    # def artist
    #     if artist
    #         artist.name
    #     end
    # end

end