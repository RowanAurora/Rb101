# problem

# get age of user, get age they wish to retire and calculate the year they retire 
# and how many years away that is
# input: two integers. output: current year, retirement year, total years left

#puts Date.today.year

puts "What is your age?"
age = gets.chomp.to_i

puts "What age do you want to retire?"
retirement = gets.chomp.to_i

this_year = Time.now.year
years_left = retirement - age
retire_year = this_year + years_left

puts "It's #{this_year}. You will retire in #{retire_year}." +
     " You have only #{years_left} years of work to go!"
