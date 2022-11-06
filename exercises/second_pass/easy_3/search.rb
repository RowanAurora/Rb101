# Problem:
# Write a program that asks for 6 numbers from a user then prints a messege that 
# tells you if 6th number is in the first 5
# rules
# - accept integer or string input

# data structure
# - An array to store the first 5 numbers

#  algorithm
# - initialize an array variable for the first 5 numbers
# - initialize a variable for the 6th number
# - use looping method for input of first 5 numbers
#   - prompt for input
#   - each pass, add element to array
#   - update counter
# - prompt for 6th input
# - call the include? method to search the array with the 6th item as argument

# code
def suffix(item)
  output = ''
  case 
  when item == '1'
   output = item + 'st'
  when item == '2'
   output = item + "nd"
  when item == '3'
    output = item + "rd"
  when item == '4' || item == '5'
    output = item + 'th'
  end
  output
end
    


array = []
number_6 = nil
counter = 1
loop do
  puts "Enter #{suffix(counter.to_s)} number:"
  number = gets.chomp.to_i
  next unless number > 0
  array << number.to_i
  counter += 1
  break if counter == 6
end

loop do 
  puts "Enter the last number:"
  number_6 = gets.chomp.to_i
  break if number_6 > 0
end

if array.include?(number_6)
  puts "The number #{number_6} does appear in #{array}."
else
  puts "The number #{number_6} does not appear in #{array}."
end