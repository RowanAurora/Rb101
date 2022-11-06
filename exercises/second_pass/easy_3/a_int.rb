# problem:
# Write a program that prompts for two positive integers
# then prints the results of the operations on those two numbers
# operations 
# +, -, *, /, %, **

# Rules:
# - do not need to validate input
# - input will always be valid integers

# data structure:
# integers and operand methods perfomed on them

# algorithm 
# - prompt for first number input
# - record number
# - prompt second input
# - record number
# - print each operation and the result.

# code: 

puts "Enter the first number:"
number_one = gets.chomp.to_i
puts "Enter second number:"
number_two = gets.chomp.to_i

puts "#{number_one} + #{number_two} = #{number_one + number_two}"
puts "#{number_one} - #{number_two} = #{number_one - number_two}"
puts "#{number_one} * #{number_two} = #{number_one * number_two}"
puts "#{number_one} / #{number_two} = #{number_one / number_two}"
puts "#{number_one} % #{number_two} = #{number_one % number_two}"
puts "#{number_one} ** #{number_two} = #{number_one ** number_two}"