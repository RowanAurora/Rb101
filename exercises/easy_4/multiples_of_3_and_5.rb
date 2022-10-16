# Write a method that searches for all multiples of 3 or 5 that lie between
#  1 and some other number, and then computes the sum of those multiples.
#   For instance, if the supplied number is 20, 
#   the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.
# needs
# -select multiples of 3 and 5 in range between 1 and given number
# - add all the multiples of 3 and 5 together
# assumptions 
#   explicit: number will be greater than 1
#   impliciit: includes given number if a multiple

# steps : 
# populate an array will all multiples of 3 and 5
# add all those numbers together

def multisum(number)
array = []
reference = *(1..number)
reference.each do |num|
  (num % 3 == 0 || num % 5 == 0) ? (array << num) : (num)
end
array.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168