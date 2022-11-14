=begin
P - Understand the Problem
Problem: Write a method that searches for all multiples of 3 or 5 that lie between 1 and a number
         then compute the sum of that number

Implicit rules:

Explicit rules:
- Add all 3 and 5 divisees between 1 and given number
- Number passed will be more than 1
Input:interger

Output:sum of 3 and 5 multiples between 1 and given integer


E - Examples Test cases
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Define multisum method to accept 1 parameter
Generate the numbers between 1 and the argument
Select out all the 3 and 5 multiples
Sum the selected multiples

C - Code (with intent)
=end

def multisum(num)
  arr=[]
  (1..num).to_a.each do |int|
    if int % 3 == 0 || int % 5 == 0
      arr << int
    end
  end
arr.sum
end

def multisum(num)
  1.upto(num).select do |int|
    int % 3 == 0 || int % 5 == 0
  end.sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) == 234168