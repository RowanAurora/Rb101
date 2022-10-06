# 1 - revisit


# 2. results in error, why and two possible ways to fix
puts "the value of 40 + 2 is " + (40 + 2)
# TypeError (no implicit conversion of Integer into String)
# The error is from the integers not being converted into strings before being merged
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
