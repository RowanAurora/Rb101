# the given solution is much more compact then mine. Should have thought about 
#using a hash becuase thats what this is a key value pair. duh

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


# problem : Take a string of numbers and convert it to an equivilent integer
# explicit
# - all characters will be numeric
# - ignore + or -
# -do not use to_i integer()
# What to do :
#   -analyze each character
#   -return integer equivilent for each character with appropriet decimal point 1, 10 ,100 etc
# input: string output:integer

def string_to_integer(string)
num = 0
count = 1
counter = -1
loop do
  break if counter == -string.size - 1
  if string[counter] == "1"
    num += (1 * count)
  elsif string[counter] == "2"
    num += (2 * count)
  elsif string[counter] == "3"
    num += (3 * count)
  elsif string[counter] == "4"
    num += (4 * count)
  elsif string[counter] == "5"
    num += (5 * count)
  elsif string[counter] == "6"
    num += (6 * count)
  elsif string[counter] == "7"
    num += (7 * count)
  elsif string[counter] == "8"
    num += (8 * count)
  elsif string[counter] == "9"
    num += (9 * count)
  elsif string[counter] == "0"
    num += (0 * count)
  end
  count *= 10
  counter -= 1
end
num
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

  
  

