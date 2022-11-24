=begin
Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the words 
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
converted to a string of digits.

Problem: 
- Write a method that converts string number words into the numbers.

INPUT: 
- String
OUTPUT:
String with number words replaced with numbers
  
TEST CASES:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


ALGORITHM:

Generate a hash using the number words ordered zero to nine as keys and index as the value
  -Define a helper method to do this
    -Iterate though number list, generateing hash
Define main method `word_to_digit` to accept a string argument
    - Convert the string to an array breaking along spaces
    - Iterate throough, checking against all number words
    -replace number word with value
return new string
code: 
=end

def hash_maker
arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
hash = {}
arr.each_with_index do |elem, idx|
  hash[elem] = idx
end
hash
end

# def word_to_digit(string)
#   hash = hash_maker()
#   keys = hash.keys
#   string = string.split(" ").map do |word|
#     counter = 0
#     loop do 
#       if word.include?(keys[counter])
#         word = word.tr_s(keys[counter], hash[keys[counter]].to_s)
#         break
#       end
#       counter += 1 
#       break if counter == 9
#     end
#     word
#   end
#   string.join(" ")
# end


def word_to_digit(string)
  hash = hash_maker()
  hash.keys.each do |word|
    string.gsub!(/\b#{word}\b/, hash[word].to_s)
  end
  string
end
p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'