numbers = *(1..99)

numbers.each { |num| (num.odd?) ? (puts num) : num }