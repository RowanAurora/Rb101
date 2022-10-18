arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

#problem: return a new array of the same structure but with sub arrays ordered appropriatly
#         in descendeing order
arr.map do |sub_array|
  sub_array.sort { |a, b| b <=> a }
end

