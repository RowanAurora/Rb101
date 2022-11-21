
def reverse(array1)
  array = array1.dup
  count_up = 0
  count_down = -1
  while count_up < array.size / 2
    array[count_up], array[count_down] = array[count_down], array[count_up]
    count_up += 1
    count_down -= 1
  end
  array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true