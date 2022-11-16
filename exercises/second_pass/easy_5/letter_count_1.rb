=begin
P - Understand the Problem
Problem: Write a method that takes a string of words and returns a hash that shows 
         the number of words of different sizes.

Implicit rules:
Only string input
Explicit rules:
words are characters seperated by spaces
Input:string

Output: hash of count of words of each letter count.


E - Examples Test cases
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

D - Data Structure
This problem starts with a string and ends with a hash. A intermediary array will be used.
A - Algorithm (Fully fleshed out logic of code chunk)
Initialize an array to hold the counts of each word size
  -break input from string to array
initialize a hash
Initialize a second array to the counts, but with duplicates removed

Using the array of unique digits, count the occurences of each.
Record as key-value pairs in the hash.

C - Code (with intent)
=end

def word_sizes(string)
  result = {}
  words_lengths = string.split.map(&:size)
  keys = words_lengths.uniq
  keys.each do |num|
    result[num] = words_lengths.count(num)
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}