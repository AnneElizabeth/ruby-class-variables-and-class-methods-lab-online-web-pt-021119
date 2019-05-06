class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@genres << self.genre

  end

  def self.count
    @@count.count
  end

  def self.genres
    genres = Hash.new

    words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

    @@genres

  end
end
