require 'pry'
class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    @files = Dir.entries(@path) 
    @files.delete_if {|file| file.length < 4}
   

    
  end 
  
  def import
    
  end 
end 