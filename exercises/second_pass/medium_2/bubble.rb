
=begin
Write a method that takes an Array as an argument, 
and sorts that Array using the bubble sort algorithm as just described. 
Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. 
You may assume that the Array contains at least 2 elements.

input: array

output: sorted array

Algorithm 
Count = 0
create a loop
Check if array_current = array_last, break if so
Iterate though the array, comparing elements count to elements count + 1
If first element is greater, swap the elements and incriment counter
otherwise, incriment counter
return the new array

code:
=end

def bubble_sort!(array)
  array_last = []
  loop do
    count = 0 
    break if array == array_last
    array_last = array.dup 
    loop do
      if array[count] > array[count + 1]
        array[count], array[count + 1] =  array[count + 1], array[count]
      end
      count += 1
      break if count == array.size - 1
    end
  end
  array
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)