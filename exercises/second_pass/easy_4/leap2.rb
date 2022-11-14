=begin
P - Understand the Problem
Problem: Leap years as in last exercise occured ever 4 years unless also divisilbe by 100 excepting 400
before 1752, it was just every 4 years. Update leap_year? to calculate across both.

Implicit rules:

Explicit rules:
Before 1752, leap year ever 4 years
after 1752, leap year ever 4 year unless divisible by 100 and not 400.
Input:year

Output:boolean value


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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)


C - Code (with intent)
=end


def leap_year?(year)
  if year < 1752
    if year % 4 == 0
      true
    else 
      false
    end    
  else  
    if  year % 400 == 0
      true
    elsif year % 4 == 0 && year % 100 != 0
      true
    else
      false
    end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true