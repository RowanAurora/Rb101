def digit_list(number)
  nums = number.to_s.chars
  nums.map { |x|  x.to_i }
end

p digit_list(12345)

#missed the syntatic sugar here

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345)