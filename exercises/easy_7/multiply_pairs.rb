# problem: write a method that takes two arrays of numbers and returns an array
# that contains the product of every paur of numbers between the elements of the two arrays
# rules
# -neither array is empty
# -always integers
# -return sorted by increasing value

# data structure:
# - two given arrays
# -third return array

# algorithm
# -take the first array, and multiply every number in the second array by each
#   -iterate though the first array, using looping to multiply it against every element
# -recorn results in third array
# - sort third array
# -return third array

def multiply_all_pairs(arr_1, arr_2)
  arr_3 = []
  arr_1.each do |number|
    arr_2. each do |num|
      arr_3 << (number * num)
    end
  end
  arr_3.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]