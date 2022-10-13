# SQMETERS_TO_FEET = 10.7639

# puts "Enter room length is meters"
# length = gets.chomp.to_f

# puts "Enter room width in meters"
# width = gets.chomp.to_f

# area = length * width
# area_feet = (area * SQMETERS_TO_FEET).round(2)
# puts "The area of the room is #{area} meters (#{area_feet} square feet)"

SQFEET_TO_CM =  929.0303
SQFEET_TO_SQINCH = 144

puts "Enter room length is feet"
length = gets.chomp.to_f

puts "Enter room width in feet"
width = gets.chomp.to_f

area = length * width
area_cm = (area * SQFEET_TO_CM).round(2)

puts "The area of the room is #{area} square feet (#{area_cm} square cm)" +
     " (#{area * SQFEET_TO_SQINCH} square inches)"