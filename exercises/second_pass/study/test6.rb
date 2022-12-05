=begin
Complete the function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
PROBLEM:
Write a method that returns true if all character in string 2 are included in string1
INPUT: Sample string, search string
OUTPUT:BOOLEAN

ALgorithm:

Break str2 into characters
iterate though the characters, check that ALL are included in string 1
  -using the all? interator and include to compare
if so, return true
otherwise, return false

Examples
=end

def scramble(str_sample, str_search)
  str_search = str_search.chars
  str_search.all? { |char| str_sample.include?(char)}
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false