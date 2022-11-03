# Problem: 
# -Write a method that takes one argument as a string, and returns it with words in reverse order

# algorithm:
# - Take the input string and split it into an array
# - reverse the order of the array elements
# - rejoin the array to a string
# - return the string

# code

def reverse_sentence(string)
  string.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''