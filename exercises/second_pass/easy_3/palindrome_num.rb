=begin
P - Understand the Problem
Problem: Write a method that returns true if its argument is a palindrome, false otherwise.
        In this case, the argument is an integer.

Implicit rules:
- just digits
Explicit rules:
argument is an integer
Input:integer

Output:boolean


E - Examples Test cases
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Define palindromic_number? method to accept 1 argument
Convert the integer object to a string object.
Initialize local variable int2 to the value of reverse of the argument as a string
Compare 


C - Code (with intent)
=end

def palindromic_number?(int)
  int1 = int.to_s
  int2 = int1.reverse
  int1 == int2
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true