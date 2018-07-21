class PetfinderCliApp::Dogs
  attr_accessor :gender, :name, :age, :available, :url

def self.today
    # I should return a bunch of instances of Dogs
    puts <<-DOC.gsub /^\s*/, ''
    1. Male Dog available.
    2. Female Dog available.
  DOC
  dog_1 = self.new
  dog_1.gender = "male"
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
