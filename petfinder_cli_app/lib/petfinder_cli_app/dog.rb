class PetfinderCliApp::Dog
  attr_accessor :name, :description, :url

  def initialize (name, url)
    @name = name
    @url = url
  end
end
