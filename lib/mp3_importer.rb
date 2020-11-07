class MP3Importer
    def initialize(file)
        @path = file
    end
    attr_accessor :path
    def files
        Dir.entries(@path).reject {|f| File.directory? f}
    end
    def import
        self.files.each do |x|
            Song.new_by_filename(x)
        end
    end
end