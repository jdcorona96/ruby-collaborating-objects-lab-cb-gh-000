class MP3Importer

  def initialize(_path)
    @path = _path
  end

  attr_accessor :path

  def files
    Dir["#{@path}/*"].collect do |file|
      file.split("/").last
    end
  end
end # MP3Importer class
