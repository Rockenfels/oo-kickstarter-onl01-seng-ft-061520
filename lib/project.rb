class Project
  
  attr_accessor :title, :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def backers
    Backer.all.reject()
  end
end