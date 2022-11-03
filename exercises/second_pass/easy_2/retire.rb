# Problem:
# - Build a program that displays when users will reture and how many years left to work.

# test:
# current_year = Time.new.year

# data structure:
# - Integers and string interpolation

# algorithm :
# - prompt for age
# - record age as variable
# - prompt for age of retirement
# - record age of retirement as variable
# - calculate the difference between the two variables
# - display current year, current year + difference
# - display difference

# code:

CURRENT_YEAR = Time.new.year
age = 0
retirement_age = 0

loop do
  puts "What is your age? (10, 20, 54, etc)"
  age = gets.chomp
  break if age.to_i.to_s == age
  puts "Error input"
end

loop do 
  puts "What age would you like to retire?"
  retirement_age = gets.chomp
  break if retirement_age.to_i.to_s == retirement_age
  puts "Error input"
end
age = age.to_i
retirement_age = retirement_age.to_i
difference = retirement_age - age
puts "Its #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + difference}."
puts "You have #{difference} years left!"