# problem: write a method that takes a integer as an argument and 
# prints a right angle triangle justied right starting one start in top right

# example
# the Kernal#format method seems to be the obvious solution but not the only

# puts sprintf("%#{6}s", '*' * 4)

# use string interpolation to assig proper numbers

# data structure

# - take number argument, use it to determine times and width
# - return a string

# algorithm
# -Create a counter variable
# -input num use as control for while loop
# -call puts on the formated string
#   -string has number interpolated to control width
#   -multiply the second value to get correct number of stars each row
# -side effect method so dont need to worry about return

# code: 

def triangle(number)
  count = 1
  while count <= number
  puts sprintf("%#{number}s", "*" * count)
  count += 1
  end
end