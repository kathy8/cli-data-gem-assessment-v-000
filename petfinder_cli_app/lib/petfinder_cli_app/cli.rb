class PetfinderCliApp::CLI

  def call
    list_dogs
    menu
    goodbye
  end


def list_dogs
  puts "Today's available dogs for adoption:"
@dogs = PetfinderCliApp::Dogs.today
@dogs.each.with_index(1) do |deal, i|
  puts "#{i}. #{dogs.name} - #{dogs.age} - #{dogs.available}"
end
end

def menu
  input = nil
  while input != "exit"
  puts "Enter doggy gender you would like to adopt and get info on or type list to see pets again or type exit:"
  input = gets.strip.downcase

  if input.to_i > 0
    the_dogs = @dogs[input.to_i-1]
    puts "#{the_dogs.name} - #{the_dogs.age} - #{the_dogs.available}"
    elsif input == "list"
    list_dogs
   else
    puts "Not sure what you want, type list or exit"
end
end
end

def goodbye
  puts "See you tomorrow for more fur babies!!!"
end
end
