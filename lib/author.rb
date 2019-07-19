class Author 
  attr_accessor :name, :posts
  @@count = 0 

  def initialize(name)
    @name= name
    @posts= []
  end

  def add_post(post)
    @posts << post
    @@count += 1
    post.author = self 
  end

  def add_post_by_title(name)
    post = Author.new(name)
    @posts << post
    @@count += 1
    post.author = self
  end
  
  def self.post_count
    @@count 
  end 
  
end