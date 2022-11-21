=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

Copy Code
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
=end

=begin
P - Understand the Problem
Problem:
write a method that swaps the case of characters in a string
Implicit rules:

Explicit rules:
-no use of swapcase
-new string object
Input:string

Output:string with character cases swapped


E - Examples Test cases
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Split string into array of characters
check each character for case
  -replace character with othercase version
rejoin Array and returns

C - Code (with intent)
=end
def swapcase(string)
  arr = string.chars
    arr.map! do |character|
      if ("a".."z").include?(character)
        character.upcase!
      elsif ("A".."Z").include?(character)
        character.downcase!
      else
        character
      end
    end.join
end
  
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'