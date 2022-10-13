# This first code block would out put

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers
1
3
=> [1, 3]

# the second code block woudl out put

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers
1
2
=> [1, 2,]