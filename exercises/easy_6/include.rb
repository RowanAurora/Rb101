# problem: write a method that takes an array and a search value as arguments
# return true of array includes it, false if it does not
# input: array, value output: boolean

# test:
# arr = [1,2,3,4,5]
# answer = false
# arr.each do |element|
#  element == 3 ? answer = true : answer 
# end


# p answer

# data structures: this requires an array and a object to search through the array

# algorithm:

# - Take arguments of array and search value
# - initialize an answer variable to standard value of false
# - iterate though the array, check each element against search value
# - return answer variable

# code:

def include?(array, searchvalue)
  answer = false
  array.each do | element |
    element == searchvalue ? answer = true : answer
  end
  answer
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false