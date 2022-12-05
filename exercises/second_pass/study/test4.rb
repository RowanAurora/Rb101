=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. 
Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, 
return the length of the longest vowel substring. Vowels are any of aeiou.

PROBLEM:WRite a method that takes a string and returns the length of the longest vowel only substring

INPUT: A string
OUTPUT: An integer representing length of longest vowel only substring

algorithm
Record all substrings
  -Initliaze a result_arr = []
  -Initialize 2 counters
  -Loop through add each substring to the result_arr
    -Iterate though starting with the first character and add each possible substring with that start
    -incriment the start and repeat
  -break loop when first counter is the size of the string 
Iterate over and select those that are all vowels
Iterate over the result array and map the size of each string
  -use the .map iterator to replace the strings with thier size
return the largest number
=end
VOWEL = %w(a e i o u)
# def scrambles(str)
#   result_arr = []
#   start_counter = 0
#   loop do
#     end_counter = 1
#     loop do
#       result_arr << str[start_counter, end_counter]
#       result_arr
#       break if end_counter + start_counter >= str.size
#       end_counter += 1
#     end 
#     start_counter += 1
#     break if start_counter >= str.size
#   end
#   result_arr = result_arr.select { |string| string.chars.all? { |char| VOWEL.include?(char)}}
#   result_arr.map(&:size).max
# end

def scrambles(str)
  result_arr = []
  str.chars.each_with_index do |char, index|
    counter = 1
    loop do
      result_arr << str[index, counter]
      break if index + counter == str.size 
      counter += 1
    end
  end
  result_arr = result_arr.select { |substr| substr.chars.all? { |char| VOWEL.include?(char)}}.map(&:size).max
end

p scrambles("codewarriors") == 2
p scrambles("suoidea") == 3
p scrambles("iuuvgheaae") == 4
p scrambles("ultrarevolutionariees") == 3
p scrambles("strengthlessnesses") == 1
p scrambles("cuboideonavicuare") == 2
p scrambles("chrononhotonthuooaos") == 5
p scrambles("iiihoovaeaaaoougjyaw") == 8