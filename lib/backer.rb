class Backer
  
  attr_accessor :name, :backed_projects
  
  @@all = []
  
  def initialize(name)
    @name = name
    @baked_projects = []
  end
  
  def back_project(project)
    @backed_project << project
  end
  
  
end