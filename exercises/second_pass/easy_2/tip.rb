# format("%.2f", 1.444)

# Problem:
# Create a tip calculator. Get user input for bill amount and tip rate. 
# - program computes tip and then displays the tip and total

# data structure:
# Floats and strins

# algorithm:
# - Prompt for bill amount
# - record as Float
# - Prompt for tip percent
# - record as Float
# - calculate tip 
#   - *0.(tip%)
# - Add tip to bill for total
# - output both numbers with explanor string.

# code
bill = 0
tip = 0

loop do
  puts "What is the bill?"
  bill = gets.chomp.to_f
  break if bill.to_s.to_f == bill
  "Error input"
end

loop do
  puts "What is the tip percentage?(5, 10, 15 etc)"
  tip = gets.chomp.to_f
  break if tip.to_s.to_f == tip
  "Error input"
end

tip_amount = bill * (tip * 0.01)
total = bill + tip_amount

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", total)}"
