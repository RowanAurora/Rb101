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

def fibonacci(num)
    arr = [1, 1] 
    loop do 
      break if arr.size == num
      arr << arr[-1] + arr[-2]
    end
  arr[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

