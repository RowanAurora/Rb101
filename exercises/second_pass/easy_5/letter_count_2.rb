=begin
P - Understand the Problem
Problem: Modify the method word_sizes from previous exercises to exclude non letters
when determining word size.

Implicit rules:

Explicit rules:
- remove all non alphabetic characters
Input:

Output:


E - Examples Test cases
('A'..'Z').to_a + ( 'a'..'z').to_a

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)


C - Code (with intent)
=end


def remove_chars(string)
  string.tr("^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ", '')
end



def word_sizes(string)
  result = {}
  string = remove_chars(string)
  words_lengths = string.split.map(&:size)
  keys = words_lengths.uniq
  keys.each do |num|
    result[num] = words_lengths.count(num)
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}