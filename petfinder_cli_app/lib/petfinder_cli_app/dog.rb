class PetfinderCliApp::Dog

  attr_accessor :name, :description, :url

  @@all = [] #class variable 

def self.all #Class reader exposing value on the variable 
  @@all 
end
  
  def initialize (name, url)
    @name = name
    @url = url
  end
def self.reset_all
  @@all.clear
end
