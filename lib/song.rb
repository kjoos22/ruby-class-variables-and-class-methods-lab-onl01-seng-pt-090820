class Song
  #class variables
  @@count = 0   #tracks the number of instances of Song
  
  #instance variables
  attr_accessor :name, :artist, :genre
  
  #initialization accepts name of song, artist, and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end
  
end