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
  
  def self.genres    #returns aray of unique existing artists
    genres = []
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres << genre
      end
    end
    genres
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
  
  def self.genre_count    #returns hash where k = genre and v = # of tracks
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] == nil
        genre_count[genre] = @@genres.count(genre)
      end
    end
    genre_count
  end
  
  def self.artist_count    #returns hash where k = artist and v = # of tracks
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] == nil
        artist_count[artist] = @@artists.count(artist)
      end
    end
    artist_count
  end
  
end