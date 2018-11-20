class Artist

  @@all = []

  def initialize(_name)
    @name = _name
    @@all << self
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
    artist = Artist.new(name)
    artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end #artist
