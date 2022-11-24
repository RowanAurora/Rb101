=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method.
 You may assume that the argument will always be an odd integer.

 PROBLEM:
Write a method that outputs a diamond with 1 * being the top and bottom and input being the middle row.
RULES:
- always an odd input
INPUT:number

OUTPUT: diamond made of "*"


E - Examples Test cases

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Intialize a counter variable to num / 2
create a loop
output the number of spaces represented by counter
output starts equal to argument - coutner*2
output the number of spaces representred by counter
incrimend counter down by 1
break when counter equals zero
create a loop
repeat operatopn above but incrimenting counter up
break when counter is argument - 1 

C - Code (with intent)
=end

def diamond(num)
  if num == 1 
    puts "*"
    return
  end
  counter = num / 2
  loop do
    puts "#{" " * counter}#{"*" * (num - (counter * 2))}#{" " * counter}"
    break if counter == 0
    counter -= 1
  end
  loop do
    counter += 1
    puts "#{" " * counter}#{"*" * (num - (counter * 2))}#{" " * counter}"
    break if counter == num / 2
  end
end

diamond(9)
diamond(1)
diamond(3)