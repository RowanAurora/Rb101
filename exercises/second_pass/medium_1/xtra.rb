# Initalize a variable to the input array with duplicates removed.
# initialize a counter variable to 0
# initliaze a third variable to contain the current count of nuber greater than.
# initalize a second counter
# initalize a result Array
# create a loop structure
# create a second loop structure
# reset counter 2 to zero.
# iterate through the input array, referencing 
# each element against an an alement from the uniq array
# incriment greater_than variable for each number greater than the reference from the duplicate array
# Add final counter to result array. 
# when all items have been interateed through, incriment the first coutner and break innner loop.
# when all elements of duplicate array have been interated through, break second array

# =end

# def smaller_numbers_than_current(array)
#   arr = array.uniq
#   counter1 = 0
#   counter2 = 0
#   current_number = 0
#   result = []
#   loop do 
#     counter2 = 0
#     current_number = 0
#     loop do
#       if array[counter1] > arr[counter2]
#         current_number += 1
#       end
#       counter2 += 1
#       break if counter2 == arr.size
#     end
#   result << current_number
#   counter1 += 1
#   break if counter1 == array.size
# end
# result
# end

def smaller_numbers_than_current(array)
  arr = array.uniq
  count = 0
  result = []
  array.each do |num|
    count = 0
    arr.each do |number|
      if number < num
        count += 1
      end
    end
    result << count 
  end
  result 
end
    


p smaller_numbers_than_current([8,1,2,2,3]) #== [3, 0, 1, 1, 2]
  p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
  p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
  p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
  p smaller_numbers_than_current([1]) == [0]