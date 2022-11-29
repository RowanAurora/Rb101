=begin 

A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, 
and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, 
and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. 
You may also assume that the arguments are specified in degrees.

Problem: write a method that takes 3 angles of a triable as arguments and returns a symbol 
:right, :acute :obtuse or :invalid depending on triangle

rules
-all angles are integer
-arguments are in degrees

-right triangle a has 1 90 angle
-acute all 3 angles are less than 90
-obtuse on angle is greater than 90

-all angles must sum to 180 exactly and be greater than 0

algorithm:

Add input angles into an array.
If the array includes zero, or does not sum to 180, return :invalid
if the array includes 90, return :right
if the array has no items larger than 90, return :acute
if the array has 1 item larger than 90, return :obtuse

code:
=end 

def triangle(num1, num2, num3)
  arr = [num1, num2, num3]
  return :invalid if arr.sum != 180 || arr.include?(0)
  if arr.include?(90)
    :right
  elsif arr.any? { |num| num > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
