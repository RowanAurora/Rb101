=begin

Write a method that computes the difference between the 
square of the sum of the first n positive integers 3 - (1 + 2 + 3)**2
and the
 sum of the squares of the first n positive integers. 3 - (1**2 + 2**2 3**2)

 INPUT: Integer

 OUTPUT Different between the integers square of sums and sum of squares

 test :
 sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

 algorithm

Initalize a sum_sq = 0
initlaize a sq_sum = 0

Calulate the the square of the sums
  -add all the digits between 1 and Argument together
  -Record in sq_sum
calculate the sum of the squares
  -for 1 up to the argument, square each number and add together
  -record in sum_sq

Subtract sq_sum from sum_sq and return the result

code 
=end

def sum_square_difference(num)
  sum = 0
  sumsq = 0
  1.upto(num) do |int|
    sum += int
    sumsq += int**2
  end
  sum**2 - sumsq
end

p sum_square_difference(3) #== 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150