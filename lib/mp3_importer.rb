class MP3Importer
    attr_accessor :path

    def initialize(test_music_path)
        @path = test_music_path
    end

    def files
    Dir.chdir(@path) do | path |
      @files ||= Dir.glob("*.mp3")
        end
    end
    
    def import
        files.each{ |filename| Song.new_by_filename(filename)}
    end

    
end