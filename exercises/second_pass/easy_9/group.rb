=begin
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams.
 Anagrams are words that have the same exact letters in them but in a different order. 
Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

PROBLEM:
Write a program that prints out groups of words that are anagrams
anagrams are words that have the same letters in differnt order
RULES:

INPUT: array

OUTPUT: printing groups of anagrams


E - Examples Test cases

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Sort array based on the words organized by character
initiaze result1 array to empty
initialize result2 array to empty
iterate through sorted array
if word sorted by charater is the same as the last word sorted by character
  add to result 1
  assigned the word sorted by character to lastword variable
if word is not the same as lastword
  add result1 array to result 2, reset result1, add word to result1 and assign character sorted word to lastword
iterate through array, printing out each sub array

C - Code (with intent)
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def sorter(array)
  array.sort_by { |word| word.chars.sort.join }
end

def word_sorter(word)
  word.chars.sort.join
end

def sub_array_maker(array)
  lastword = array[0]
  result1 = []
  result2 = []
  array.each do |word|
    if word_sorter(word) == word_sorter(lastword)
      result1 << word
      lastword = word
    else
      result2 << result1
      result1 = []
      result1 << word
      lastword = word
    end
  end
  result2
end

sub_array_maker(sorter(words)).each do |array|
  p array 
end