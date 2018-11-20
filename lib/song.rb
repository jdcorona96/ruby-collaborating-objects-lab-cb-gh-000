class Song

  def initialize(_name)
    @name = _name

  end

  attr_accessor :name, :artist, :genre

  def self.new_by_filename(_filename)
    _filename.split(" - ")
    song = Song.new()
    
    
  end
end #song
