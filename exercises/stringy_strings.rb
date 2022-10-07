def stringy(number)
  binary = ""
  loop do
  binary << "1"
  number -= 1
  break unless number > 0 
  binary << "0"
  number -= 1
  break unless number > 0
  end
  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(size, sec=1)
  numbers = []
  if sec == 1
    size.times do |index|
     number = index.even? ? 1 : 0
     numbers << number
    end
  elsif sec == 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(8, 0)