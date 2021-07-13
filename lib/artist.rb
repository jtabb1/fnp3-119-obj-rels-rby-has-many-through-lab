class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_song(name,genre)
    song = Song.new(name, self, genre)
    Song.all << song
    song
  end

  def songs
    Song.all.select{|et| et.artist == self}
  end

  def genres
    songs.map{|et| et.genre}.uniq
  end
end