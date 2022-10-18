arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
#problem: return array of only hashes where all integers are even.

arr_2 = arr.select do |hash|
  hash.all? do |key, value|
    value.all? { |num| num.even? }
  end
end



p arr_2