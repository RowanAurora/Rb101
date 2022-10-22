# problem: write a method that takes an array of numbers and returns the sum of each leading
# subsequence for that array. 
# rules
# -array always has at least 1 numbers
# -[1, 2, 3] = (1) + (1 + 2) + (1 + 2 + 3) / (1 + 3 + 6)

# data structure: 
# -the given array
# - array to store each subsequence in order
# - variable containing the total sum

# algorithm
# - take the array, add the first item to the new array
# - sum that, add to total variable
# - add the second item to the array
# - sum that, add to total variable
# - continue till all integers are added to new array
# - return number

def sum_of_sums(array)
  subsequence_array = []
  total = 0
  array.each do |num|
    subsequence_array << num
    total += subsequence_array.sum
  end
  total
end

p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35