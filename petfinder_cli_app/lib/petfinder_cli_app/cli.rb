class PetfinderCliApp::CLI

  def call
    puts "Today's Available Pets for adoption:"
    list_pets
    menu
    goodbye
  end


def list_pets
  puts "Todays Available Pets:"
  puts <<-DOC.gsub /^\s*/, ''
  1. Male Dog available.
  2. Female Dog available.
DOC
@petfinder = PetfinderCliApp::Dogs.today
end

def menu

  input = nil
  while input != "exit"
  puts "Enter Breed you would like to adopt and get info on or type list to see pets again or type exit:"
  input = gets.strip.downcase
  case input
  when "1"
    puts "More info on pet 1..."
  when "2"
    puts "More info on pet 2..."
  when "list"
    list_pets
  else
    puts "Not sure what you want, type list or exit"
end
end
end

def goodbye
  puts "See you tomorrow for more pets!!!"
end
end
