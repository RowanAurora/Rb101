=begin
  Problem-
  Create a tip calculator
  -accept input of bill and tip %
  -calculate tip $
  -add tip$ to bill
  Print tip $ & Total bill
  Input: two integers/floats
  output: two floats in string interpolation
Promt for bill amount
 - record answer
Promt for tip %
- record answer

Tip amount is tip% of bill

bill total is bill + tip amount

print both values in string interpolation

=end

puts "What is the bill?"
bill = gets.chomp.to_f.round(2)

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f/100

tip_amount = (bill * tip_percent).round(2)
total_bill = tip_amount + bill
puts "Tip total is $#{format("%.2f", tip_amount)}"
puts "Total bill with tip is $#{format("%.2f", total_bill)}"

