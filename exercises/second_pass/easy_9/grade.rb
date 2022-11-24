=begin


Write a method that determines the mean (average) of the three scores passed to it,
 and returns the letter value associated with that grade. Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'


Tested values are all between 0 and 100. 
There is no need to check for negative values or values greater than 100.

PROBLEM:
Write a method that takes 3 numbers, calculates the average and returns a letter grade
RULES:
Table above reflects grade letters
INPUT:3 numbers

OUTPUT:string letter


E - Examples Test cases
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
create a method average that calculates the average
-add three numbers together and return that number divided by 3

define get_grade method
pass arguments to avg helper method.
record return
check number against ranges to determine letter grade
return letter grade

C - Code (with intent)
=end
def average(num1, num2, num3)
  (num1 + num2 + num3) / 3
end

def get_grade(num1, num2, num3)
  num = average(num1, num2, num3)

  if num >= 90 
     "A"
  elsif num >= 80 
     "B"
  elsif num >= 70 
    "C"
  elsif num >= 60 
     "D"
  else 
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"