# problem:

# Write a method that takes one argument, an array containing positive integers
# and returns the average of all the numbers.

# algorithm
# take array argument, add each consecutive number together
# divide by the size of the array
# return the output of that operation

def average(array)
  array.reduce(&:+) / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40