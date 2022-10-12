# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(hash)
# counter = 0
# selected_fruit = {}
# checker = hash.keys

# loop do

#   break if counter == checker.size
  
#   current_key = checker[counter]
#   current_value = hash[current_key]

#   if current_value == "Fruit"
#     selected_fruit[current_key] = current_value
#    end

#    counter += 1
#   end

#   selected_fruit
# end

# p select_fruit(produce)

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2
   
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers)
p my_numbers

# number[counter] *= 2
# makes sense to use operators like that

