# Problem:
# Write a a program that will ask a user for a string and then output the character count
# rules
# - spaces do not count as characters

# data structures
# -strings, arrays and integers

# algorithm

# prompt for string input
# assign a variable to the input
# assign the result of spliting and joining the string or .tr
# call the .size method to find the amount of characters
# output a string intepolated with the result of the last step and orginal string

# code:

puts "Please write a word or multiple to find character count."
full_string = gets.chomp
char_count = full_string.tr(" ", "").size

puts "There is #{char_count} characters in : #{full_string}"

