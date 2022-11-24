=begin
Write a method that takes a string argument, and returns true if all of 
the alphabetic characters inside the string are uppercase, 
false otherwise. Characters that are not alphabetic should be ignored.

=begin

PROBLEM: Write a method that takes a strign adn returns true of all alphabetic chars are upcase
false otherwise. non alphabetic are ignore

RULES:

INPUT:string

OUTPUT:boolean value


E - Examples Test cases
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Define uppercase? method to accept 1 argument
check if string upcased is same as string.
return result
C - Code (with intent)

=end

def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
