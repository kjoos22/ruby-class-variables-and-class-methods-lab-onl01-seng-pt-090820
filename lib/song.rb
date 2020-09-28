require 'pry'

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
    @@genres << genre
    @@artists.include?(artist)
    @@artists << artist
  end
  
  #class method(s)
  def self.count    #returns @@count, the # of instances of Song
    @@count
  end
  
  def self.genres   #returns @@genres, array of existing genres
    @@genres
  end
  
  def self.artists    #returns aray of unique existing artists
    artists = []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end
    end
    artists
  end
  
  
end