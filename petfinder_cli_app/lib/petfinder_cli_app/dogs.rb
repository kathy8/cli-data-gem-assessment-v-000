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
    doc = Nokogiri::HTML(open("https://www.petfinder.com/search/dogs-for-adoption/us/al/35216/?distance=100"))
    dog_cards = doc.css(".petCard_result")
    dog_cards.each do |dog_card|
      binding.pry
    end
 binding.pry
end
end
