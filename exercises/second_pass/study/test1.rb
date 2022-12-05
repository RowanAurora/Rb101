# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.
=begin
Problem:
write a method that takes a stringt as an argument and returns the character that occurs least often
if multiple occurcers, return the one that appears first in the string. case insensitive

input: string
output: least occuring character. 

algorithm:
Create a dpulicate of the string
  -break into characters
iterate over and replace each character with its counts
  use map comparing to orginal character arr
find the index of the lowest number
return that index from the orginal string broken into characters

=end

def least_common_char(str)
  ref = str.downcase.chars
  nums_arr = str.downcase.chars
  nums_arr.map! do |char|
    ref.count(char)
  end
  num = nums_arr.index(nums_arr.min)
  ref[num]
end
# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".