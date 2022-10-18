arr_1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

#problem
#return a new array with the same structure but with each integer incrimented +1
# iterate outer array
#access hash, transform integers
#return new array

arr_2 = arr_1.map do |subarray|
  new_hash = {}
  subarray.each do |k, v|
    new_hash[k] = v + 1
end
new_hash
end
p arr_1
p arr_2