class PetfinderCliApp::Dogs
  attr_accessor :gender, :name, :age, :available, :url

def self.today
    # Scrape petfinder and return available dogs based on that data
    # I should return a bunch of instances of Dogs
   self.scrape_dogs
 end

def self.scrape_dogs
  dog_1 = self.new
  dog_1.gender = "Male"
  dog_1.name = "Kevin"
  dog_1.age = "0-6 months"
  dog_1.available = "true"
  dog_1.url = "https://www.petfinder.com/dog/kevin-41781301/nv/las-vegas/pekes-paws-and-tails-nv204/"

  dog_2 = self.new
  dog_2.gender = "female"
  dog_2.name = "Nellie"
  dog_2.age = "0-6 months"
  dog_2.available = "true"
  dog_2.url = "https://www.petfinder.com/dog/nellie-42146493/nv/las-vegas/pekes-paws-and-tails-nv204/"

[dog_1, dog_2]
  end
end
