class Artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def add_song(song)
        song.artist = self
    end
    def self.all
        @@all
    end
    def self.find_or_create_by_name(name)
        self.all.detect {|artist| artist.name == name} || self.new(name)
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def print_songs
        self.songs.each do |x|
            puts x.name
        end
    end
end