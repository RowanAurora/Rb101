def reverser(array)
  counter = 0
  counter_2 = -1
  new_arr = []
  while counter != array.size
    new_arr[counter] = array[counter_2]
    counter += 1
    counter_2 -= 1
  end
new_arr
end
list = [1,2,3,4]
p list.object_id
p reverser(list).object_id

#reverse_each was allowed and exist appearent. iterates though arrays backwords
#only array available