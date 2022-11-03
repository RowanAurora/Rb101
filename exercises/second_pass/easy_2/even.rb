numbers = *(1..99)

numbers.each { |num| (num.even?) ? (puts num) : num }