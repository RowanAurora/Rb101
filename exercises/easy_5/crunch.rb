# problem: write a method that takes a string and returns a new string
# that contains the value of the original string but with consecutive duplicates
# collapsed
# rules
# - may not use .squeeze/ .squeeze (presumably also .tr_s)
# - two or more in a row are consecutive
# - spaces maintained

# data structures 
# -my instinct says to break the string up into an array and use that to check and deletes chars
# - return a string with same spacings

# algorithm
# - Define crunch method and accept one string argument
# - initialize a new variable to store new string
# - call .chars on the string to seperete into array
# - compare each character to previous character
# - add to variable if not the same as previous character
# -return variable

def crunch(string)
  new_string = []
string.each_char do |char|
  new_string << (char) unless new_string.last == char
  end
new_string.join
end

p crunch('ddaaiillyy ddoouubbllee') 
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
