# problem: write a mtehod that returns the index of the fibonacci number
# that first has the number of digits specified in argument
# input: interger representing number of digits
# output:index where fib. number has that many digits

# take number, add to previous 2 numbers, compare to given digit


def find_fibonacci_index_by_length(number)
  counter = 2
  current_num = 1
  second_num = 1
  loop do
    break if current_num.to_s.size == number
    adding_num = (current_num + second_num)
    second_num = current_num
    current_num = adding_num
    counter += 1
  end
  counter
end

  puts find_fibonacci_index_by_length(2)     
  p find_fibonacci_index_by_length(3) == 12     
  p find_fibonacci_index_by_length(10) 
  p find_fibonacci_index_by_length(100) == 476
  p find_fibonacci_index_by_length(1000) == 4782
  p find_fibonacci_index_by_length(10000) == 47847