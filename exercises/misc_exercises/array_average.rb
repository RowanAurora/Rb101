def average(array)  
  length = array.length
  total = array.sum
  (total / length)
end

puts average([1, 6]) == 3 
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(array)
  total = array.reduce(:+)
  (total.to_f / array.length.to_f)
end

puts average([1, 6]) 
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 