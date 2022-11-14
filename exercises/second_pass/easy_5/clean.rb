=begin
P - Understand the Problem
Problem:Write a method that consists of all lowercased letters and non-alphabetic characters
        return a string with all the non alphabetic characters replaced by spaces

Implicit rules:

Explicit rules:
-Never more than ones space in a row
Input:string

Output:string with all non alphabetic characters removed


E - Examples Test cases
cleanup("---what's my +*& line?") == ' what s my line '
D - Data Structure
An array of characters
A - Algorithm (Fully fleshed out logic of code chunk)
initalize a variable to assign to the retuern
break string into array of charaters
iterate though array
  if character is alphabetic add to new variable
  otherwise, add a space
remove the extra spaces
return the string
C - Code (with intent)
=end
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  result = []
  string.chars.each do |char|
    ALPHABET.include?(char) ? result << char : result << ' '
  end
  result.join.squeeze
end
p cleanup("---what's my +*& line?") == ' what s my line '