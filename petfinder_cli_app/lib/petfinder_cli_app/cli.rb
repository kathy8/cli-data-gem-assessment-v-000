class PetfinderCliApp::CLI

  def call
    list_dogs
    menu
    goodbye
  end


def list_dogs
  puts "Today's available dogs for adoption:"
  puts <<-DOC.gsub /^\s*/, ''
  1. Male Dog available.
  2. Female Dog available.
DOC
@dogs = PetfinderCliApp::Dogs.today
end

def menu
  input = nil
  while input != "exit"
  puts "Enter doggy gender you would like to adopt and get info on or type list to see pets again or type exit:"
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
  puts "See you tomorrow for more fur babies!!!"
end
end
