=begin
P - Understand the Problem
Problem: Write a method that return `true` if the string passed as argument is a palindrom. 
         otherwise return false.

Implicit rules:
-only string input
Explicit rules:
- a palindrome is the same word forwards and backwards
-case, spaces and punctuation matter here.
Input: String

Output: boolean as implicit return


E - Examples Test cases

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

define method 'palindrome?' (methods that return a boolean should have '?' at the end)
to with 1 parameter

initialize local variable and assign a new string that is the reverse of input string.
compare input string and new string
return true or false dependant on evaluation.

C - Code (with intent)
=end

def palindrome?(string1)
  string2 = string1.reverse
  string1 == string2
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true