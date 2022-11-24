=begin
Write a method which takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.

PROBLEM:
Write a method that takes an array and returns the string in each sub array repearted the interger of times
RULES:

INPUT:nested array

OUTPUT:flat array 


E - Examples Test cases
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Intialize a result array to empty
iterate though the argument array
 - add first string element to result second element amount of times
 -move into new array
flatten array

C - Code (with intent)
=end

def buy_fruit(array)
  result = []
  array.each do |list|
    list[1].times do 
    result << list[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
