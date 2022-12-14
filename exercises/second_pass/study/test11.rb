=begin
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

PROBLEM: Write a method that accepts a string and returns the string with every 2nd charcter 
in every third word converted to uppercase. OThers are the same.

INPUT: string sentence

OUTPUT: STring sentence with every 2nd character in every 3rd word upcased

Notes:
  Iterating by mapping is likely the easiest 
  select every 3rd word, break to characters, upcase every 2nd. rejoin

ALGORITHM:
Initialize a result_arr = []
Split string into array using ' ' as delimitor
Iterate over word_arr with each_with_index 
  - If not every thirds, add work to result array 
  - if the index + 1 % 3 == 0
    - break word into char_arr 
    -Iterate though char arr, upcaseing every other character
    -rejoin and add to result_arr
return result arr 

# Examples:
=end

# def to_weird_case(string)
#   word_arr = string.split(' ')
#   result_arr = []
#   count = 0
#   word_arr.map! do |word| 
#     count += 1
#     inner_count = 0
#     if count % 3 == 0
#       word.chars.map do |char|
#         inner_count += 1
#         if inner_count % 2 == 0
#           char.upcase
#         else
#           char
#         end
#       end.join
#     else 
#       word 
#     end 
#   end
#   word_arr.join(" ")
# end

# def to_weird_case(string)
#   word_arr = string.split(" ")
#   result_arr = []
#   count = 0
#   loop do 
#     counter2 = 1
#     result_arr << word_arr[count] if count + 1 % 3 != 0
#     if count % 3 == 0
#       word_arr[count].char.map do |char|
        
#         counter2 += 1

      
#       count += 1
def map_with_index(arr)
  result = []
  arr.each_with_index do |element, index|
    result << yield(element, index)
  end
  result
end

def to_weird_case(string)
  words = string.split(" ")
  weird_words = map_with_index(words) do |item, index|
    index % 2 == 0 ? item.upcase : item
  end
  weird_words.join(" ")
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') #==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".