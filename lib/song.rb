class Song

  def initialize(_name)
    @name = _name

  end

  attr_accessor :name, :artist, :genre

  def self.new_by_filename(_filename)
    file_data = _filename.split(" - ")
    song = Song.new(file_data[1])
    artist = Artist.find_or_create_by_name(file_data[0])
    binding.pry
    artist.add_song(song)
    song.artist = artist
    song
  end
end #song
