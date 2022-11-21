=begin
P - Understand the Problem
Problem: Write a method that calculate and retuirns the index of the first Fibonacci
number that has the number of digits that is the argument

Implicit rules:

Explicit rules:

Input: Integer representing  a number of digits

Output: The index of the first occurence of a fibonaccis numeber with
that number of digits represented by input

E - Examples Test cases
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Initialize a counter to get the index number
initilaize first number
Create a structure of iterate though fibonacci numbers while generating them
Start a loop
The new fib number is last two numbers added together.
Add 1 to the counter to represent the new index of the number
Check the amount of digits, if it matches input argument
  -reutrn counter
if not, return to top of loop

C - Code (with intent)
=end

def find_fibonacci_index_by_length(num)
  counter = 1
  first_fibonacci = 0
  second_fibonacci = 1
  loop do 
    new_number = first_fibonacci + second_fibonacci 
    first_fibonacci = second_fibonacci
    second_fibonacci = new_number
    counter += 1
    break if new_number.digits.size >= num
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847