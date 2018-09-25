class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    split_files= filename.split(" - ")
    song = split_files[1]
    artist = split_files[0]
    Song.new(song)
    song.artist = artist 
    song 
  end 

end 