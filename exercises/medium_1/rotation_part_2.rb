
# Problem:
# - Write a method that can rotate the last N digits of a number
# rotating 1 results in a return of the original number

# Rules: 
# - Takes 2 Arguments, no defaults
# - Second input is size of digits or smaller 
# -always positive integer input
# test:

# appropriate starting index is arr size - number of selected digits
# arr size = 5
# selection = 4
# [1, 4]
# rest of array is [0, first number of other selection Argument

#   algorithm:
# - select appropriate digits from input for rotated section and remainder
# - rotate them
# - rejoin with the rest of array

def rotate_array(array)
  y = []
  counter = 1
  loop do
  break if counter == array.size
    y << array[counter]
    counter += 1
  end
  y << array[0]
end

def rotate_rightmost_digits(number, number_two)

  arr = number.to_s[(number.digits.size - number_two), number_two]
  arr2 = number.to_s[0, (number.digits.size - number_two)]
  arr = arr2.chars + rotate_array(arr.chars) 
  arr.join.to_i
end
                           
