=begin
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.

Problem: move elements from a rectangular array matrix and rotate the elements 90 degrees to the right

input: array of x1 x x2
output array of x2 x x1

tests

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix

algorithm:

Gather # of elements in each subarray = x
gather # of sub arrays = y
Generate new empty array = result
Generate a flattened array from input reveresed 

Populate the result array with a number of empty arrays equal to the y

iterate though the result, adding on item to each sub array on each pass

return new array

code: 
=end
require 'pry'

def empty_array_maker(num)
  result = []
  loop do
    result << []
    break if result.size == num
  end
  result
end

# def rotate90(matrix)
#   filler = matrix.reverse.flatten
#   y = matrix[0].size
#   result = empty_array_maker(y)
#   loop do
#     result.each do |sub|
#       sub << filler.shift
#     end
#   break if filler == []
#   end
#   result
# end
def rotate90(matrix, num=90)
  filler = matrix.reverse.flatten
  y = matrix[0].size
  result = empty_array_maker(y)
  loop do
    result.each do |sub|
      sub << filler.shift
    end
  break if filler == []
  end
  if num == 90
    result
  elsif num == 180
    rotate90(result)
  elsif num == 270
    rotate90(rotate90(result))
  elsif num == 360 
    rotate90(rotate90(rotate90(result)))
  end
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
p rotate90(matrix1, 360)
# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# pretty satisfiying one. algorithm spot on first time. Made a silly mistake not returning the result from a helper method.