class Song
    @@all = []
    def initialize(name="temp")
        @name = name
        @artist
        @@all << self
    end
    attr_accessor :name, :artist, :artist_name
    def self.all
        @@all
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
    def self.new_by_filename(file)
        song = self.new
        song.name = file.split(" - ")[1]
        song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
        song
    end
end