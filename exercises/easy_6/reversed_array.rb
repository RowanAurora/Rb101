# problem: write a method that tkaes an array as an argument and reverses its elements in poalce
# rules 
# - return value should be same array object
# -can not use reverse or reverse!
# -reverse the order of elements, no the elements themselves

# testing

# list = %w(a b c d e)

# counter = 0
# counter_2 = -1

# loop do
#   break if counter > list.size / 2
#   list[counter] = list[counter_2]
#   counter += 1
#   counter_2 -= 1
# end
# not the correct return, things are over writing

# p list
# counter = 0
# counter_2 = -1

# loop do
#   break if counter > list.size / 2
#   list[counter], list[counter_2] = list[counter_2], list[counter] 
#   counter += 1
#   counter_2 -= 1
# end

# p list


def reverser(array)
 
counter = 0
counter_2 = -1

loop do
  break if counter > array.size / 2
  array[counter], array[counter_2] = array[counter_2], array[counter] 
  counter += 1
  counter_2 -= 1
end
array
end
list = %w(a b c d e)
p list.object_id
p reverser(list).object_id
