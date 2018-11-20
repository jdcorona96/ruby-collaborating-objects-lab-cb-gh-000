class Song

  def initialize(_name)
    @name = _name

  end

  attr_accessor :name, :artist, :genre

  def self.new_by_filename(_filename)
    file_data = _filename.split(" - ")
    song = Song.new(file_data[1])
    Artist.all.each do |artist|
      if artist.name == file_data[0]
        ## WIP
      end
    @artist = file_data[0]

  end
end #song
