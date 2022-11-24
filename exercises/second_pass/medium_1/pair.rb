def pairs(array)
  result = []
  array.each do |num|
    array.each do |num1|
      result << [num, num1]
    end
  end
  result
end

def difference_finder(array)
  closest_pair = [array[0][0], array[0][1]]  
      array.each do |pairs|
      if pairs[0] != pairs[1]  
      if (pairs[0] - pairs[1]) > 0 && (pairs[0] - pairs[1]) < (closest_pair[0] - closest_pair[1])
        closest_pair = pairs
      end
    end
    end
  closest_pair
end

def closest_numbers(array)
  arr = pairs(array)
  difference_finder(arr)
end

p closest_numbers([5, 25, 15, 11, 20]) #== [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) #== [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]