age = rand(20...200)

puts "Give us a name!"
name = gets.chomp 
name == "" ? name = "Teddy" : name

puts "#{name} is #{age} years old!"