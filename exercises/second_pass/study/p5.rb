=begin
Write a method that takes a string as an argument and returns
the character that occurs least often in the given string.

If there are multiple characters with the equal lowest number
of occurrences, then return the one that appears first in the
string. 
When counting characters, consider the uppercase and
lowercase version to be the same.


PROBLEM:
WRite a method that returns the least occuring character. If some are equal, return the first occurance.
# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".

algorithm:
Break the input string into character array
create a blank hash
create a copy that is unique characters
Iterate though unique array and assign the count of each character in orignal array as a value to each character key
Iterate though the hash, using it to remove all the characterr from the original string that are dupliate or occur more than least occurance
return first letter of modified string

=end

def least_common_char(string)
  arr1 = string.downcase.chars
  arr2 = arr1.uniq
  hash = {}
  arr2.each do |letter|
    hash[letter] = arr1.count(letter)
  end
  values = hash.values
  hash.each do |key, value|
    arr1.delete(key) if value > values.min
  end
  arr1[0]
end 

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'