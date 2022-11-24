=begin
A double number is a number with an even number of digits whose left-side digits are 
exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all 
double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; double numbers should be returned as-is.

PROBLEM:

Write a method that returns 2 times the number provided as an argument. 
Unless the argument is a double number, which are returned as is

RULES:
is number is doublenumber ie 44 , 3737 return as is
INPUT:number

OUTPUT:same or diffrent number depending if double


E - Examples Test cases
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Assign a variable to the input converted to string
Compare first 1/2 of string to second 1/2 of string
if same, return as is
if not same, multipy by 2 and return

C - Code (with intent)
=end

def twice(num)
  check = num.to_s
  if check[0, (check.size / 2)] == check[(check.size / 2)..check.size]
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10