class MP3Importer

  def initialize(_path)
    @path = _path
  end

  attr_accessor :path

  def files
    Dir["@path"]
    binding.pry
  end
end # MP3Importer class
