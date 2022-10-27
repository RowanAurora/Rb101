# Problem:
# Write a method that takes an array of arrays each with a fruit and a quantity
# return an array of the number of each fruit repeared ie grape 2 [grape, grape]

# Data structure:
# This is an array Problem, takes an arrray and output an array

def buy_fruit(array)
  arr = []
  array.each do |arrays|
    arrays[1].times  { arr << arrays[0] }
  end
  arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]