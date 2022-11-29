
=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument.
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar)
and that it will remain in use for the foreseeable future.
P - Understand the Problem
Problem: return the number of friday the 13ths in a year given as input

Implicit rules:

Explicit rules:
all years will be after 1752

Input:year

Output:integer representing friday the 13ths


E - Examples Test cases
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
initialize a variable to hold the friday 12th count

Initialize a date object to the given year, month 1 and day 13
create a loop
Check if date is friday
Add 1 months
break when end of year.
return chount of 13ths


C - Code (with intent)
=end

require 'date'

def friday_13th(year)
  count = 0
  reference = Date.civil(year, 1, 13)
  12.times do 
    if reference.friday?
      count += 1
    end
    reference = reference.next_month
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

#date math makes me want to cry