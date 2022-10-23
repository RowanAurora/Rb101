# Problem:
# Write a method that takes a number as an argument
# - If the number is postive, return the negative
# - if 0 or negative, return the original number
# test
# 2.6.3 :001 > 5 * -1
# => -5 
#  2.6.3 :002 > 0 * -1 
#   => 0 
#  2.6.3 :003 > -5 * -5
#   => 25 

def negative(number)
  (number >= 0) ? (number *= -1) : number
end
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby