=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be
 greater than the length of the longest side, and all sides must have lengths greater 
 than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and 
returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether
 the triangle is equilateral, isosceles, scalene, or invalid.

input: 3 integers
output: symbol based on the triangle they represent or invalid

algorithm

Sort the input numbers
if two lowest numbers added at not larger than the first, return :invalid
If all three are the same, return :equilateral
If two are same and one is smaller return :isosceles
if 3 sides are different lenght, return:scalene

code: 
=end

def triangle(num1, num2, num3)
  arr = [num1, num2, num3].sort.reverse
  return :invalid if (arr[1] + arr[2]) < (arr[0]) or arr.any?(0)
  if num1 == num2 && num1 == num3
    :equilateral
  elsif (num1 == num2) ^ (num1 == num3)
    :isosceles
  elsif (num1 != num2) && (num1 != num3) && (num2 != num3)
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid