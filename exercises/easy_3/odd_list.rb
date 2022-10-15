def oddities(array)
  count = 0
  new_array = []
  loop do
      break if count >= array.size
      new_array << array[count]
      count += 2
    end
  new_array
end

def evenies(array)
  count = 1
  new_array = []
  loop do
      break if count >= array.size
      new_array << array[count]
      count += 2
    end
  new_array
end

def odds(array)
  new_array = []
  new_array = array.select { |element| array.index(element).even? }
end



p odds([2, 3, 4, 5, 6]) == [2, 4, 6]
p odds([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p odds(['abc', 'def']) == ['abc']
p odds([123]) == [123]
p odds([]) == []