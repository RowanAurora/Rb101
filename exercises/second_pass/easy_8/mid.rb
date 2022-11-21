=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

PROBLEM :
Write a method that returns the middle character of input string if odd and middle 2 if even.

Examples:

Copy Code
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

algorithm 
Check if string size is odd or even for conditional
If string is odd, return the middle character with indexed retrieval
- string size / 2 gives the middle characters index
if string even, return middle two characters with index retrieval
- middle characters indexes are string size / 2 -1 and string size / 2

Code
=end

def center_of(string)
  mid = string.size / 2
  if string.size.odd?
    string[mid]
  else 
    string[mid - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'