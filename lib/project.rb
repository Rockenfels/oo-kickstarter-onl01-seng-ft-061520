class Project
  
  attr_accessor :title, :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_backer(backer)
    if backer.class = Backer
      @backers << backer
      backer.add_project(self)
    end
  end
  
  def backers
    Backer.all.reject{ |backer| !backer.backed_projects.include(self) }
  end
end