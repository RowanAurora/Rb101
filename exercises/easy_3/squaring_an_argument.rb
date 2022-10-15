def multiply(num_1, num_2)
  num_1 * num_2
end


def square(num_1)
  multiply(num_1, num_1)
end

def power(num_1, num_2)
  num = 1
  counter = 0
  loop do
    num = multiply(num, num_1)
    counter += 1
    break if counter >= num_2
  end
  num
end

p power(2,2) 