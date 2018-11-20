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

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
      self.artist.name = name
    end
    
  end
end #artist
