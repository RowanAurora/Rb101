# Problem: 
# -Write a method that takes an argument, a string, and returns the string with words with 5 
# or more letters reversed.

# algorithm:

# Split string into array of words
# Check the string length
# if the length is 5 or more, reverse the string
# if the string is less, leave it be.
# rejoin the string and returns

# code

def reverse_words(string)
  words_array = string.split 
  words_array.map do |words|
    words.size >= 5 ? words.reverse : words
  end.join(" ")
end

  puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS