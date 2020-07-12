class Project
  
  attr_accessor :title, :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def backers
    Backers.all
  end
end