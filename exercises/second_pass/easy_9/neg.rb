# Write a method that takes a number as an argument. 
# If the argument is a positive number, return the negative of that number. 
# If the number is 0 or negative, return the original number.

=begin

PROBLEM:
Write a method that takes a number as an arugment
if the argumetn is a pos number, return the negative
  if number is 0 or neg return self

RULES:
-return neg if pos
-return neg if neg or 0
INPUT: number

OUTPUT: a negative number 


E - Examples Test cases
negative(5) == -5
negative(-3) == -3
negative(0) == 0
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Define negative method to accept one argument
check if argument is less than or equal to 0
if yes
  -return self
if no
  multiply by -1 and return
end


C - Code (with intent)
=end

def negative(num)
  num <= 0 ? num : num * -1
end
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
  