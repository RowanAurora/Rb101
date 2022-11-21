=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:

Copy Code
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 
  28361.667

  Problem: Write a methodthat takes an array of integers, multiples all the numbers together, divides the result by number of elements in the array, and prints the result rounded to 3 decimal places. 
input: array of integers
output: 1 float

examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 
  28361.667

algorithm:
Gather the product of adding all the integers together
convert the product to a float number
divide that float by the size of the array
format to 3 decimal places
=end
  
def show_multiplicative_average(array)
  product = array.reduce(&:*).to_f
  sprintf("%.3f", (product / array.size))
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 
  28361.667