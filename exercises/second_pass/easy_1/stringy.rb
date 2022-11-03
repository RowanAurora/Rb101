# problem:
# -Write a method that takes a positive integer argument and retursn a string of alternating 1 and 0
# the lenght of string should match the given integer


# algorithm
# -initialize a variable with with ""
# -initialize a count
# -use loop method
# -insert a '1' to the string
# -add 1 to the count
# break if count == integer
# -insert a '0' to the string
# -add 1 to count
# break if counter == integer
#  return string

#  code

def stringy(int)
  bin = ''
  count = 0 
  loop do
    bin << '1'
    count += 1
    break if count >= int
    bin << '0'
    count += 1
    break if count >= int
  end
    bin
end

  puts stringy(6) 
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'