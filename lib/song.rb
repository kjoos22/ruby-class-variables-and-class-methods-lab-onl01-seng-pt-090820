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
    if !@@genres.include?(genre)    #if new, add genre to @@genres
      @@genres << genre
    end
    if !@@artists.include?(artist)    #if new, add artist to @@artists
      @@artists << artist
    end
  end
  
  #class method(s)
  def self.count    #returns @@count, the # of instances of Song
    @@count
  end
  
  
end