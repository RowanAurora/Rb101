=begin
P - Understand the Problem
Problem: Write a method that takes a positive integer or 0 and converts it to a string

Implicit rules:

Explicit rules:
No to_s methods
maintain zeros
Input:integer

Output:string equivilent


E - Examples Test cases
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
D - Data Structure

an array of strings representing the number that matches its index
would make sense for this problem
A - Algorithm (Fully fleshed out logic of code chunk)

Inititalize a constant to an array object consisiting of the string characters for number 0-9 in order
so they match the index
define a method integer_to_string
Intitalize a string object to hold the result.
Start a loop
divide by 10 and capture the remaineder and quotient in seperate variables
use the remainder to retrive the character fromt he array
add chacater to result
break after all characeters iterated through

C - Code (with intent)
=end
INT_STRING = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(INT_STRING[remainder])
    break if number == 0
  end
  result
  end

  p integer_to_string(4321) == '4321'
  p integer_to_string(0) == '0'
  p integer_to_string(5000) == '5000'
