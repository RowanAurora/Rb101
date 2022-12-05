=begin  
Complete the greatest_product method so that it'll find the greatest product of five consecutive digits
in the given string of digits.

Problem: Write a method that finds the greatest prodcut of 5x consectuvie digits 

Inputs: String
Output: Integer representing highest product

notes :
Make an array of each 5 consecutive series
break each into digits, turn to integers and get the products

Algorithm:
Intialize a result_array = []
Break input into char_arr 
intialize a counter 
Interate though adding each set of 5 using slice
Iterate though the result_array getting the product of each
return the highest number 

=end

def greatest_product(array)
  counter = 0
  result_array = []
  char_arr = array.chars 
  loop do 
  result_array << char_arr[counter, 5] 
  counter += 1
  break if counter == char_arr.size - 4
  end
  result_array.map! { |num| num.map(&:to_i) }
  result_array.map! { |arr| arr.reduce(&:*) }
  result_array.max
end



p greatest_product("123834539327238239583") == 3240
p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

