
def merge(array, array_2)
  array_3 = array << array_2
  array_3.flatten.uniq 
end
p merge([1, 3, 5], [3, 6, 9])
[1, 3, 5, 6, 9]

def merge(array_1, array_2)
  array_1 | array_2
end