# Problem:
# Write a method that takes two arguments
# 1. The starting number
# 2. the ending number
# Print out all the numbers between eccept
# 1. if a number is divisible by 3, print Fizz
# 2. if a number is divisible by 5, print Buzz
# 3. if a number is divisible by 3 and 5, print FizzBuzz

# Input: two numbers Output: the numbers between the two, with 3multiples being fizz, 5s being Buzz

# Data structure:
# The data structure that seems to be applicable here is a if else statment or a case statement
# Looping can also work
# could either use as start and limitor or generate an array

# Algorithm
# - use first number as a counter
# - use second as a limitor
# - start a loop 
# - case the counter
#   -check against 3 and 5, and 3 and 5
#   - print out the appropirate Output
# - add one to the counter
# -check counter against limitor

# code

def fizzbuzz(num_1, num_2)
  counter = num_1
  loop do
    break if counter > num_2
    case
    when counter % 3 == 0 && counter % 5 == 0
     puts "FizzBuzz"
    when counter % 5 == 0
      puts "Buzz"
    when counter % 3 == 0
      puts "Fizz"
    else
      puts counter
    end
    counter += 1
  end
end

fizzbuzz(1, 15)