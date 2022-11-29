=begin
Write a method that takes a 3 x 3 matrix in Array of Arrays format and 
returns the transpose of the original matrix. Note that there is a 
Array#transpose method that does this -- you may not use it for this exercise. 
You also are not allowed to use the Matrix class from the standard library. 
Your task is to do this yourself.

Problem: Write a method that returns an array where the argument is transposed,
The columns and rows are switched

Input: Array
OUTput :a new array that is the old array transposed

algorithm: 

Result = [[][][]]
counter1 = 0
Assigned the first element of each sub array to the first sub array of new array
  -use counter to do index retrieval
  -incriment counter and repeat 2 more times

return new array

code 
=end

def transpose(matrix)
  result = [[], [], []]
  3.times do |counter|
    result[0] << matrix[counter][0]
    result[1] << matrix[counter][1]
    result[2] << matrix[counter][2]
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]