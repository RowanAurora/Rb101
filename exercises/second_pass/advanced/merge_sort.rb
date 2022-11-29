=begin
PROBLEM: Recursively sort a single array by spliting into smalelr arrays and then rejoining in order.
use merge from last exercises

INPUT: ARRAY

OUTPUT:SORTED ARRAY

algorithm:
Return in array size is 1
Split input into sub1 and sub 2
call self on sub 1
call self on sub 2
use merge method on sub 1 and sub 2
=end






def together(arr1, arr2)
  arr3 = arr1 + arr2.flatten
  arr3.flatten
end

def merge(arr1, arr2)
  arr = together(arr1, arr2)
  result = []
  current_number = arr.min
  loop do
    result << arr.min
    idx = arr.find_index(arr.min)
    arr.delete_at(idx)
    break if arr == []
  end
  result
end

def merge_sort(arr)
  return arr if arr.size == 1

  sub1 = arr[0...(arr.size / 2 )]
  sub2 = arr[(arr.size / 2 )...(arr.size)]

  sub1 = merge_sort(sub1)
  sub2 = merge_sort(sub2)

  merge(sub1, sub2)
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]