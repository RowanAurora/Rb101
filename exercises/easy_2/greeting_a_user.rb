# problem
# take user input for name. output greeting if no ! 
# upcase greeting if name!
# input - string output - one of two interpolated strings


puts "What is your name?"
name = gets.chomp! 

if name.chars.last == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hi #{name}."
end