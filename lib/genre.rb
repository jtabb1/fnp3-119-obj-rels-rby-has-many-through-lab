class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|et| et.genre == self}
  end

  def artists
    songs.map{|et| et.artist}.uniq
  end
end