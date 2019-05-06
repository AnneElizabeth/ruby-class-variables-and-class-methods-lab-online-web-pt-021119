class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@genres << self.genre
    @@artists << self.artist

  end

  def self.count
    @@count.count
  end

  def self.genres
    genre = Hash.new
    genre.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.genre_counts

  end

  def self.artists
    artist = Hash.new
    artist.each_with_object(Hash.new(0)) {|artist, counts| counts [artist]}
  end

  def self.artist_count

  end
end
