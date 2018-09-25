class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    split_files= filename.split(" - ")
    song = split_files[1]
    artist = split_files[0]
    
    Artist.find_or_create_by_name(artist)
    artist.add_song(song)
    song.artist = Artist.name 
    song 
  end 

end 