class Song
    attr_accessor :name,:genre,:artist

    @@all=[]

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@all<<self
    end

    def self.all
        @@all
    end

end

#<Song:0x00007fabe393cbc8 @name="Ninety Nine Problems", @artist=#<Artist:0x00007fabe393ccb8 @name="J...songs=[#<Song:0x00007fabe393cbc8 ...>]>, @genre=#<Genre:0x00007fabe393cc40 @name="rap", @songs=[]>>
#<Song:0x00007fabe393cbc8 @name="Ninety Nine Problems", @artist=#<Artist:0x00007fabe393ccb8 @name="J...songs=[#<Song:0x00007fabe393cbc8 ...>]>, @genre=#<Genre:0x00007fabe393cc40 @name="rap", @songs=[]>>