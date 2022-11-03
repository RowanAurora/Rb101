array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

should print Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo

While the object of array2 isnt modified, the elements that are inserted
and meet the criteria of the transformation are mutated, resulting in the variables in both arrays
being mutated as they point to the same object. 
Each object in the arrays share an object id with the one inserted into the other array.


