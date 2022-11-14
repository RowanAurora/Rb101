=begin
P - Understand the Problem
Problem: Write a method that takes any year greater than 0 as input and returns true if the year is a leap year
        otherwise return false

Implicit rules:

Explicit rules:
-year / 4 is a leap year unless also / 100
- is a leap year if divisible by 400

Input: year

Output: boolean


E - Examples Test cases
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)


 
Check is Input divisible by 400
Return true is it is
check is divisible by 4 and not 100.
Return true if it is
other wise, return false
C - Code (with intent)
=end

def leap_year?(year)
  if  year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true