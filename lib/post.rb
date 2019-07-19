
class Post
  
  @@all = []
  attr_accessor :author, :title
  
  def initialize(title, author=nil)
    @title = title
    @author = author  
    @@all << self 
  end 

  def author_name
    if author == nil 
      nil 
    else 
      author.name 
    end 
  end
  
  def self.all 
    @@all
  end 
 

end