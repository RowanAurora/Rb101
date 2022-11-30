=begin
Write a method that returns the number of Friday the 13ths in
the year given by an argument. You may assume that the year is greater than 1752 
(when the United Kingdom adopted the modern Gregorian Calendar) 
and that it will remain in use for the foreseeable future.

Write a method that counts the number of friday the 13ths in an input year. 

input: Interger representing year
Output: integer representing # of friday the 13ths


algorithm:

Generate a date object for january 13th of  input year
initialize a counter = 0
check if it is a friday
 -if so incriment counter by 1
Do so 12 times
return count number 
=end
require 'date'

def friday_13th(year)
  count = 0
  current = Date.civil(year, 1, 13)
  12.times do 
    count += 1 if current.friday?
    current = current.next_month
  end
  count
end

p friday_13th(2015) #== 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2