def running_total(array)
  return array if array == []
  counter_1 = 0
  counter_2 = 1
  array_2 = []
  array_2 << array[0]
  loop do
    break if counter_2 >= array.size 
    array_2[counter_2] = (array_2[counter_1] + array[counter_2])
    counter_1 += 1
    counter_2 += 1
  end
  array_2
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

def running_total(array)
  sum = 0
  array.each_with_object([]) {|num, a | a << sum += num}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []