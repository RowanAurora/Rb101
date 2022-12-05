=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. 
Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.

Problem: Gather all numbers that are multiples of 3 and 5 between 1 and input

INPUT: top intger of range
OUTPUT: Sum of 3 and 5 numbers

algorithm:
Generate an array with Multiples of 3
Generate an array with Multiples of 5
Merge the two arrays and remove duplicates
Add the nubmers in array together and return

=end

def three_and_five(num)
  arr = (0.step(num -1 , 3).to_a)
  arr2 =(0.step(num -1 , 5).to_a)
  arr = arr.concat(arr2).uniq
  arr.sum
end
p three_and_five(10) == 23
p three_and_five(20) == 78
p three_and_five(200) == 9168
 
