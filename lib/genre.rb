class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
        # Song.all.select do |song|
        #    song.artist == self
        # end
    end

    def artists
        songs.map(&:artist)
        # songs.all.select do |art|
        #     art.genre == self
        # end
    end

    # def genres
    #     Genre.all.select do |genres|
    #         genres.artist == self
    #     end
    # end

end