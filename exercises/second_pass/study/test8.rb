=begin 
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

Problem: return the number of odd numbered substrings 
INPUT:a string
OUTPUT is an integer

rules 
-return an integer from the string argument 
-not the substings, but the count of odd ones

algorithm 

Break the input array into characters = char_arr
iitlaized a result_arr = []
iterate though the char_arr each_with_index
  -Initiliaze a counter = 1 
  -loop though, adding to the result_arr
    - current index, count of items
Iterate over the result array  and then to integers
Iterate over modified result array 
  -selecting the odd numbers 
return the count of odd numbers 

=end 
def odd_subs(string)
  char_arr = string.chars 
  result_arr = [] 
  char_arr.each_with_index do |_, index|
    counter = 1 
    loop do 
      result_arr << string[index, counter]
      break if index + counter == string.size
      counter += 1 
    end 
  end 
  result_arr.map!(&:to_i)
  result_arr.select { |num| num.odd? }.size 
end
p odd_subs("1341") == 7
p odd_subs("1357") == 10
p odd_subs("13471") == 12
p odd_subs("134721") == 13
p odd_subs("1347231") == 20
p odd_subs("13472315") == 28
