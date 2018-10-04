class PetfinderCliApp::Dogs
  attr_accessor :name, :description, :url

def self.today
    # Scrape waggingtailsrescue and return available dogs based on that data
    # I should return a bunch of instances of Dogs
   self.scrape_dogs
 end

def self.scrape_dogs
  dogs = []

  dogs << self.scrape_waggingtailsrescue
  # Go to waggingtailsrescue, find dogs
  # Extract the properties
  # Instantiate availability

dogs
  end

  def self.scrape_waggingtailsrescue
    doc = Nokogiri::HTML(open("https://waggingtailsrescue.org/"))
    dog = self.new
    list_doc = doc.search("#projectPages")
    list_doc.each.with_index do |page, i|
      dog = PetfinderCliApp::Dog.new(
      doc.search("div.project-title")[i].text,"hardcoded description")
      name = doc.search('div.project-title.Jolly').text
      description = doc.search('div.project-description.Jolly').text
        
    end
    doc.search("div.project-title").each do |doginfo|

end
end
end
