=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

Copy Code
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

problem: Write a methoed tha ttakes two array arguments and return a new array that contains the prodcut of every pair of numbers that can be formed between the elments of the arrays. sorted by value\
input: 2 arrays
output: 1 array of products

algoritm:
initialize 2 counter variables  
initialize an array `results`
create a loop 
reset second counter here
create a new loop
Loop through, multiplying index from first counter with all elements of second Array and adding to result
incriment couter 1, reset counter 2
end loop
sort `result` by value
return new array
=end

def multiply_all_pairs(arr1, arr2)
  result = []
  count1 = 0
  count2 = 0
  loop do 
    count2 = 0
    loop do
      result << arr1[count1] * arr2[count2]
      count2 += 1
      break if count2 == arr2.size
    end
    count1 += 1
    break if count1 == arr1.size
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

