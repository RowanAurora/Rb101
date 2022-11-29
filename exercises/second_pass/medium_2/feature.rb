=begin

A featured number (something unique to this exercise) 
is an odd number that is a multiple of 7, and whose digits occur exactly once each.
 So, for example, 49 is a featured number, but 98 is not (it is not odd), 
 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, 
and returns the next featured number that is greater than the argument.
 Return an error message if there is no next featured number.

Problem: 
write a method that takes a number argument and returns the next number that :

-is odd
-is multiple of 7
-digits occur 1 time

algorithm:
Create a validation? method 
  -check if argument is 
    -is odd
    -is multiple of 7
    -digits occur 1 time
  -return true if so, false otherwise

In main method:
  Incriment argument till multiple of seven.
  create a loop
  Validate the current number
  If not validated, incriment by seven.
  return number when validated.

code intentely! 
=end

def feature?(num)
  (num % 7 == 0) && (num.odd?) && (num.to_s.chars.uniq.join == num.to_s)
end

def featured(num)
  loop do
    num += 1
    break if (num % 7 == 0) && (num.odd?)
  end
  loop do
    break if feature?(num)
    num += 14
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) # == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

