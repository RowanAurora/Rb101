=begin
Write a recursive method that computes the nth Fibonacci number, 
where nth is an argument to the method.

rules
-method calls on self at least once
-conditional that stops recursion
-use the return of method call on self

Problem:
write a method that calculates a specific number in the fibbonacci sequence using recursion

input: interger
output: fibonnaci number that is input number in sequence

algorithm:

Unless the array size is greater than 2
Intialize a variable to an array [1, 1]
return last number when the array size is equal to the input 
  If the array size is 2 or more then
    Add last two elements of array together
    append the new number to the array
 call self

 code
=end

# def fibonacci_last(num)
#     arr = [1, 1] 
#     loop do 
#       break if arr.size >= num
#       arr << arr[-1] + arr[-2]
#       arr.shift
#     end
#   arr[-1].to_s[-1].to_i
# end


def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  
  last.to_s[-1].to_i
end
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4