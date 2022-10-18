arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr_2 =  arr.sort do |a, b|
    a.select {|element| element.odd?} <=> b.select { |element| element.odd?}
  end
   
p arr_2

arr.sort_by do |array|
  array.select do |num|
    num.odd?
  end
end