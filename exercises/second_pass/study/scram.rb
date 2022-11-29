=begin
A collection of spelling blocks has two letters per block, as shown in this list:

Copy Code
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters 
from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in 
as an argument can be spelled from this set of blocks, false otherwise.

Problem:  Can The test words be spelled using the blocks (not more than one letter from each block)

input: String
Output: Boolean

rules
-case insensitive
-letters wont repeat

Generate an array of pairs representing the blocks.
Break input word into array of chars
generate a result_count = 0
Iterate though blocks array
Exclusive or compare each block letter
  -If true, incriment result_count
If result count = size of word, return true, else false
=end


def block_word?(str)
  arr = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  str_chars = str.upcase.chars
  result_count = 0 
  arr.each do |block|
    if str_chars.include?(block[0]) ^ str_chars.include?(block[1])
      result_count += 1
    end
  end
  result_count == str.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true