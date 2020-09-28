class Song
  #class variable(s)
  @@count = 0   # # of instances of Song
  @@genres = []   #array of all existing genres
  @@artists = []    #array of all existing artists
  
  #instance variables
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if !array.include(genre)
      @@genres << genre
  end
  
  #class method(s)
  def self.count    #returns @@count, the # of instances of Song
    @@count
  end
  
  
end