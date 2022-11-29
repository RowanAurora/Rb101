
def transpose(matrix)
  num = matrix[0].size
  num2 = matrix.size
  count = 0
  result = []
  num.times do
    result << []
  end
  num2.times do |counter|
    loop do
      break if count == num
      result[count] << matrix[counter][count]
      count += 1
    end
    count = 0
  end
  result
end

p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]