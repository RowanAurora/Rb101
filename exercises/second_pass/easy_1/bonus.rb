# problem: write a method that takes a interger and boolean argument, and calculates the bonus
# for a salary. If true, the bonus is half the salary if false, 0

# algorithm
# if boolean is true, divide int by 2 and return,
# if false return 0

def calculate_bonus(int, boolean)
  boolean ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000