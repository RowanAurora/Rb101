def sum(number)
  array = number.to_s.chars
  array.map(&:to_i).reduce(:+)
end

puts sum(23) == 5  
puts sum(496) == 19
puts sum(123_456_789) == 45

#given solution i can actually put that all on one line.
#.digits also can work but i think is a newer method?