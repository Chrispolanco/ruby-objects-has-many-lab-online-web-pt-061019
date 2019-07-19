class Song
  
  @@all = []
  attr_accessor :artist, :name
  
  def initialize(name, artist=nil)
    @name = name
    @artist = artist  
    @@all << self 
  end 

  def artist_name
    if artist == nil 
      nil 
    else 
      artist.name 
    end 
  end
  
  def self.all 
    @@all
  end 
 

end