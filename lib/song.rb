class Song
  #instance variables
  attr_accessor :name, :artist, :genre
  
  #initialization accepts name of song, artist, and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
  
end