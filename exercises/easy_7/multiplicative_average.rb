# write a method that takes an argument of an array of integers, multiplies all the numbers together, 
# divides the result by the number of entires in the array, the prints the result rounded
# to three decimal places.
# rules
# -array is non empty
# - 3. decimal places
# - result interpolated in string

# (3 * 5) / 2.0

# format('%.3f', 7.5)

# data structure
# - recieving integers in an array, but need to use floats to properly calculate decimal points

# algorithm
# - sum the array
# - divide by array.size.to_f to get the proper result
# -interpolate that into a string

def show_multiplicative_average(array)
  puts "the result is #{format('%.3f', array.reduce(&:*) / array.size.to_f)}"
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#if we leave out the first to_f in the given solution, we will end up with a rounded integer
#that gets formated to have 3 decimal places