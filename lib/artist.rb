class Artist
  attr_accessor :name, :songs
  @@count = 1 

  def initialize(name)
    @name= name
    @songs= []
  end

  def add_song(song)
    @songs << song
    @@count += 1
    song.artist = self 
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    @@count 
  end 
  
end