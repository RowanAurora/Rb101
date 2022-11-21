=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

PROBLEM: Write a method that takes two arguments, the starting number and ending number. print all numbers from starting number to ending number, unless divisble by 3 or 5 or 3 and 5.
-if divisble by 3 and 5, replace with FizzBuzz
-if only divisble by 3, replace with Fizz
If only divisible by 5, replace with Buzz
input: two integers
output: printed range of those numbers, with appropriate replacements. 
Example:

Copy Code
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

ALGORITHM:

Define a method to accept 2 integer arguments
Generate a range of the numbers between two inputs
Check each number, sequentially if / by 3 and 5, /3, /5
Replace if so 
Print out the current number or replacement
 code:
=end

def fizzbuzz(num1, num2)
  num1.upto(num2) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
