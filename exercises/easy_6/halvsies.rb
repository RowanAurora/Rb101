# problem: write a method that splits an array into two arrays in a nested array
# if there is an odd number of elements, the middle should be in the first array

# data structures:
# takes an array, returns an array with two arrays nested inside of into

# - get size of array
# - if odd +1 /2 for first, -1/2 for second

def halvsies(array)
  new_arr = [[],[]]
  array.size / 2
  array.each_with_index do |element, index|
    if index < array.size / 2 && array.size.even?
      new_arr[0] << element
    elsif index < ((array.size + 1) / 2)
      new_arr[0] << element
    else
      new_arr[1] << element
    end
  end
   new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# never seen .ceil before thats interesting
# they call 2.0 instead of 2 because odd numbers in two rounds oddly for integers
# so they use a float