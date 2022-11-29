=begin
PROBLEM : Write a method that displays an 8-pointed star in an nxn grid, 
where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

INPUT: An integer
OUTPUT: A 8 pointed start that is n x n 
Rules: INPUT IS ODD
tests: 

*--*--*
-*-*-*-
--***--
*******
--***--
-*-*-*-
*--*--*
*123*123*
1*12*12*1
12*1*1*12
123***
*********
   ***
  * * *
 *  *  *
*   *   *
algorithm:
number = input / 3
Print 1 star, number space, 1 start, number space, 1 star
print 1 space, start, num -1 space, star, num-1 space, star 1 space
num space, inoput - num * 2 start  ,num space
input star
reverse steps

=end


# def star(number)
#   b = "*"
#   a = ' '
#   num = number / 2
#   numb = 0
#   #puts   b + a * num + b + a * num + b
#   loop do 
#     num -= 1
#     puts (a * numb) + b + (a * num) + b + (a * num) + b + (a* numb)
#     numb += 1
#     break if num <= 0
#   end
#   puts "*" * number
#   num = 0
#   loop do 
#     break if numb == 0
#     numb -= 1
#     puts (a * numb) + b + (a * num) + b + (a * num) + b + (a* numb)
#     num += 1
#   end
#  ##puts   b + a * num + b + a * num + b
# end

def print_row(grid_size, from_center)
  number_of_spaces = from_center - 1
  spaces = ' ' * number_of_spaces
  line = ["*", "*", "*"].join(spaces)
  puts line.center(grid_size)
end

def star(grid_size)
  max_from_center = (grid_size - 1) / 2
  max_from_center.downto(1) { |distance| print_row(grid_size, distance)}
  puts "*" * grid_size
  1.upto(max_from_center) { |distance| print_row(grid_size, distance)}
end




star(7)



star(9)

