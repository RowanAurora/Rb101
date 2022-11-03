# write a method that takes an int argument and returns a list of digits in the number

def digit_list(int)
  int_arr = int.to_s.chars.map(&:to_i)
end

# def digit_list(int)
#   int.digits.reverse
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) 