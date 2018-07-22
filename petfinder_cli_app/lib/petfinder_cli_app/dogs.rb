class PetfinderCliApp::Dogs
  attr_accessor :gender, :name, :age, :available, :url

def self.today
    # Scrape petfinder and return available dogs based on that data
    # I should return a bunch of instances of Dogs
   self.scrape_dogs
 end

def self.scrape_dogs
  dogs = []

  dogs << self.scrape_petfinder
  # Go to petfinder, find dogs
  # Extract the properties
  # Instantiate availability

dogs
  end

  def self.scrape_petfinder
    doc = Nokogiri::HTML(open("https://petfinder.com"))
 binding.pry
end
end
