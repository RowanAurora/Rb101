# problem write a method that:
# - Rotate the input 
# - keep first digit locked, rotate input
# - keep first 2 digits locked, rotate input
# - repeat untill last two digits are rotated
require 'pry'

def rotate_array(array)
  #binding.pry
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
                           
# def max_rotation(num)
#   number_digits = num.to_s.size
#   number_digits.downto(2) do |n|
#     num = rotate_rightmost_digits(num, n)
#   end
#   num
# end

def max_rotation(num)
  counter = num.to_s.size
  loop do
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
    break if counter <= 1
  end
  num
end


p max_rotation(735291)
p max_rotation(3) == 3
p max_rotation(35) 
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146)