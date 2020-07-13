class Backer
  
  attr_accessor :name, :backed_projects
  
  @@all = []
  
  def initialize(name)
    @name = name
    @baked_projects = []
    @@all << self
  end
  
  def back_project(project)
    if project.class == Project
      @backed_project << project
      project.add_backer(self)
    end
  end
  
  def self.all
    @@all
  end
  
end