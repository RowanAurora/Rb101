# problem: 
# Write a method that takes two arguments, a string and positive int. and prints the strings that many times

# test
# 3.times {puts 'hi'}

# date structure : 
# Strings and integers

# algorithm

# Take string input and integer input
# Call the  .times method on the integer input
# in the block of .times, puts the string input

def repeat(string, int)
  int.times { puts string}
end

repeat("wow", 10)

