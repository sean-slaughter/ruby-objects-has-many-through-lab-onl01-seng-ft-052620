class Artist

    attr_accessor :name
    @@all = []


    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song.artist = self
        song
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        output = []
        self.songs.each do |song|
            output << song.genre
        end
        output
    end





end