class Artist

  @@all = []

  def initialize(_name)
    @name = _name
  end

  attr_accessor :name, :songs

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    
  end
end #artist
