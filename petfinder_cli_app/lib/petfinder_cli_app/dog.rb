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

def self.count
  @@all.size
end

def self.find_dogs(name) #class Iterate over the all array
  @@all.detect{|dog| dog.name == name}
end
end