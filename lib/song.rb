class Song 
attr_accessor :name, :artist, :genre   

  @@count = 0 
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << artist 
    @@genres << genre 
  end
  
  def self.count 
    @@count
  end 
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.artist_count
    @@artist_count = {}
    @@artists.each do |artist|
    if @@artist_count[artist]
      artist_count[artist] += 1 
    else artist_count[artist] = 1
    end 
    artist_count
  end
  
  def self.genre_count
    @@genre_count = {}
  end 
  
  def self.genres
    @@genres.uniq 
  end 
  
end 