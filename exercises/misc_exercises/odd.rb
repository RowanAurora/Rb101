def is_odd(number)
  number % 2 == 1
end

def is_odd?(number)
  number.remainder(2) == 1
end

p is_odd(5)
p is_odd(-5)
p is_odd(2)
