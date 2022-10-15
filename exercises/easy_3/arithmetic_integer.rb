def addition(num_1, num_2)
  num_1 + num_2
end

def subtraction(num_1, num_2)
  num_1 - num_2
end

def product(num_1, num_2)
  num_1 * num_2
end

def quotient(num_1, num_2)
  num_1 / num_2
end

def remainder (num_1, num_2)
  num_1 % num_2
end

def power (num_1, num_2)
  num_1 ** num_2
end

puts "==>Enter first number:"
num_1 = gets.chomp.to_i

puts "==>Enter second number:"
num_2 = gets.chomp.to_i

puts "==>#{num_1} + #{num_2} = #{addition(num_1, num_2)}"
puts "==>#{num_1} - #{num_2} = #{subtraction(num_1, num_2)}"
puts "==>#{num_1} * #{num_2} = #{product(num_1, num_2)}"
puts "==>#{num_1} / #{num_2} = #{quotient(num_1, num_2)}"
puts "==>#{num_1} % #{num_2} = #{remainder(num_1, num_2)}"
puts "==>#{num_1} ** #{num_2} = #{power(num_1, num_2)}"