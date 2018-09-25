class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    split_files= filename.split(" - ")
    song = Song.new(split_files[1])
   
   
    artist = Artist.find_or_create_by_name(split_files[0])
      song.artist = artist
    Artist.add_song(song)
   
    song 
  end 

end 