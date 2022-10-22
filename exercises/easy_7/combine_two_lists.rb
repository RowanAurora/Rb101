# problem: write a method that combines two arrays passed as arguments and returns a new arrays
# that contains all the elements from both, alternating

# input: two arrays output: one array of the contents
# rules
# -new arrays elements should be alternating elements from the old arrays
# -maintain object type
# - arrays are same lenght and not empty
# examples

# a = [1, 2, 3]
# b = ['a', 'b', 'c']

# c = []
# c << a[0] 
# c << b[0]
# c << a[1] 
# c << b[1]

# data structures: 
# initialize a new array to store the objects, use two input arrays to fill

# algorithm
# -initialize array_3
# -initialize counter
# -loop structure
#   -input from each array at index(counter)
#   -add one two counter
#   -break when counter is equal to size of array
# -return array_3

# code

def interleave(array_1, array_2)
  array_3 = []
  counter = 0
  while counter < array_1.size
    array_3 << array_1[counter]
    array_3 << array_2[counter]
    counter += 1
  end
  array_3
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']