def multiply(numbers, multiplier)
  multiplied_number = []
  counter = 0

  loop do
    break if counter == numbers.size

    multiplied_number << numbers[counter] *= multiplier
    counter += 1
  end

  multiplied_number
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)