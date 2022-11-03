# Problem:
# Build a program that asks a user for the lenght and width of a room in meters
# and then displays the area of the room in both square meters and feet
# rules
# - 1 sq meter == 10.7639 sq feet
# - Dont worrry about validating input

# Testing
# format("%.2f", 1.444)

# Data structures:
# This problem uses floats and string interpolation

# algorithm

# Set constant for conversion x 10.7639
# - prompt for input of one dimension in meters
# - prompt for second input in meters
# - calculate the square meters from that
# - use that to calculate the square feet
# - output a interpolated string with both measurements

# code

SQ_METERS_TO_SQ_FEET = 10.7639

puts "Enter room length in meters:"
side_one = gets.chomp.to_f
puts "Enter room width in meters:"
side_two = gets.chomp.to_f

square_meters = side_one * side_two
square_feet = square_meters * SQ_METERS_TO_SQ_FEET

puts "The area of the room is #{format("%.2f", square_meters)} square meters" \
     " (#{format("%.2f", square_feet)} square feet)."