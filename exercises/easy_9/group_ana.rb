# Problem:
# Write a program that prints out groups of words that are anagrams.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# rules
# - if a word contains the same 4 letters, add to array

# data structures:
# - Given array
# - output array
# - both are full of strings
#   -need the chars of the strings


result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end
  
result.each_value do |value|
  p value
end