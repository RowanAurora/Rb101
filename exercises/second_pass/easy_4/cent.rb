=begin
P - Understand the Problem
Problem: Write a method that takes a year as an input and returns the century.
         The return value should be a string that begins with century number and ends with
         st, nd, rd, th as appropriate.

Implicit rules:
-Integer input
- no cap
Explicit rules:
-New centuries begin in years that end with 01. ie 1901-2000 == 20th century

Input: year interger

Output: century string ie 21st


E - Examples Test cases

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th
cent = year / 100 + 1
11, 12, 13 are th

determine century number by dividing input by 100 and adding 1
If year divided by 100 is 0 substract one

if last digits are 11 12 or 13 return th
if last digit is 1 return st
if last digit is 2 return nd 
if last digit is 3 return rd
anythign else returns th
C - Code (with intent)
=end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# This one still gave me a lot of trouble. The code part is fine but a hard time with time based math.