=begin
P - Understand the Problem
Problem: Write a methgod that returns true is argument is a palindrome, false otherwise.
      
Implicit rules:

Explicit rules:
- method should be case INSENSTIVE andd ignore spaces and non alphanumeric characters.
Input: String argument

Output: boolean value


E - Examples Test cases

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

D - Data Structure

 Arrays will come into play to edit the strings appropirately to compare

A - Algorithm (Fully fleshed out logic of code chunk)

iterate through input character by character
  - transform upcase characters to downcase
  - remove non alphanumeric characters
initialize a new local variable to the return value of the iteration.
- initalize a new local variable to the reverse of the variable in former step
Compare last two local variables.

C - Code (with intent)
=end
APPROVED_CHARS = (('A'..'Z').to_a << ('a'..'z').to_a << ('0'..'9').to_a).flatten.join


def real_palindrome?(string0)
  string1 = string0.downcase.chars.select do |char|
    APPROVED_CHARS.include?(char) ? char : false
  end.join
  string2 = string1.reverse
  string1 == string2
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false