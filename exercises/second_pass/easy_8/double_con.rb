=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.


PROBLEM : Write a method that takes a string and returns a new string that has all the consonants doubled. 
Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

ALGORITHM:
generate a constant containing all consonant
Break input string into array of characters
Iterate though the array of characters
- check if constant of consonants include current character
-if so double the character
return new Array
=end

arr = [*"A".."Z", *"a".."z"].join
ALPHA = arr.delete("/AEIOUaeiou/")

def double_consonants(string)
  result = string.chars.map do |char|
    if ALPHA.include?(char)
      char * 2
    else 
      char
    end
  end.join
  result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""