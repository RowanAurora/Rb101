# problem: print odd numbers only, from 1 to 99 inclusive on seperate lines.
# given a collection of integers 1 - 99 print each odd on new lines

(1..99).each { |num| (num.odd?) ? (puts num) : (num) }

number = 1

while number < 100
  puts number
  number += 2
end
