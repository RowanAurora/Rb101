# Problem:
# Write a method that takes an integer argument and returns a double number if the argument is
# or twice the number if not.
# rules
# - if the number is a double number ie 22, 33, 4444 return as is
# - if not, return double the number

# Data structures:
# -The method recieves integers
# -The method outputs integers
# -converting to string is maybe the easiest way to confirm doubling

# algorithm
# - Check if input is double number
#   -convert to string, split in half and compare
#   -if double number, return
# -if number is not double number, double it and return

#   code
def twice(number)
  if number.to_s[0, number.to_s.size / 2] == number.to_s[(number.to_s.size / 2),
     (number.to_s.size / 2)] && number.to_s.size.even?
    number
  else
    number *= 2
  end
  number
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444)
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10