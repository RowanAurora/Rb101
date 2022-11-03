# problem:
# Write a method that takes one integer argument, +, - or 0. The method returns true if numbers
# value is odd.

# test
#  3 % 2 != 0
#  data structures :
#  integers and booleans

#  algorithm:
#  Define method to accept one integer argument
#  check if int modulo = 0
#  return true or false

#  code

 def is_odd?(int)
  int % 2 != 0
 end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)   