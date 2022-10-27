# problem:
# Write a method that rotates an array (moves first element to the end of the array)
# rules
# -the original array should not be modified
# -do no use Array#rotate




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


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# array[1..-1] + [array[0]]

def string_rotate(string)
  rotate_array(string.chars).join
end

p string_rotate "hello"

def number_rotate(number)
   string_rotate(number.to_s).to_i
end