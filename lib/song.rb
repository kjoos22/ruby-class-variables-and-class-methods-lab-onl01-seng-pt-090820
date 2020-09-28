class Song
  #class variable(s)
  @@count = 0   #tracks the number of instances of Song
  
  #instance variables
  attr_accessor :name, :artist, :genre
  
  #initialization - accepts name of song, artist, and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end
  
  #class method(s)
  def self.count    #returns @@count, the total number of instances of Song
    @@count
  end
  
end