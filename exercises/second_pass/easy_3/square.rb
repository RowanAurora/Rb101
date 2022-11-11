=begin
P - Understand the Problem
Problem: Write a method that computers the square of its argument

Implicit rules:
multiply an argument by itsself
return the resulting integer

Explicit rules:
Use the multiply methods from the last exercises

Input: an integer

Output:return square of input


E - Examples Test cases

square(5) == 25
square(-8) == 64

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Define a method with one parameter
Multiply that parameter by itsself
  - Use given method with self as both arguments
end method

C - Code (with intent)
=end

def multiply(num1, num2)
  num1 * num2
end

def square(int)
  multiply(int, int)
end

p square(5) == 25
p square(-8) == 64

