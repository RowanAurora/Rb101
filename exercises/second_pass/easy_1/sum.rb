# write method that takes a ineger argumetn and returns the sum of its digits.

def sum(int)
  int.digits.reduce(&:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45