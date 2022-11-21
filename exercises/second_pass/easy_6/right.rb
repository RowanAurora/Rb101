=begin
P - Understand the Problem
Problem: right a method that takesa a postive interger as an argument, and displats a right angle triangle 
whose sides each have the positive intger of *. Justified right

Implicit rules:

Explicit rules:

Input:number

Output: right angle triangle with n * for sides


E - Examples Test cases
triangle(5)

    *
   **
  ***
 ****
*****
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
format to puts number of characters n
puts * each time adding 1 *
end at inoput number of stars

C - Code (with intent)
=end

def triangle(num)
  count = 1
  loop do
    puts "#{" " * (num - count)}#{"*" * count}"
    break if count == num
    count += 1
  end
end

  triangle(5)