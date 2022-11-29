=begin 
Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, 
false otherwise.

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

Input: word
Output: boolean 

test cases: 
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

algorithm:
Create array with two letter pairs representing the blocks

Change the input string into uppercase to match the blocks

Iterate through the blocks array, checking that the input string doesn't have 2 matches on any one block


code:
=end

def block_word?(word)
  arr = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']
  word.upcase!
  arr.none? { |block| word.count(block) >= 2 }
end 
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
    
