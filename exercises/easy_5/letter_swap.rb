# problem: write a method that takes a string of words seperated by spaces
# and returns a string where the first and last letters of each word are swapped
# -everyword is at least one letters
# -nothng but words and spaces

# test
# string = "hi hello"   

# arr = string.split(" ")
# arr.map do |word|
#   letters = "" 
#   letters.prepend(word[0])
#   letters.prepend(word[-1])
#   word[0] = letters[0]
#   word[-1] = letters[-1]
# data structure
# will need to move the string into array to reliably select the first and last chars from each word
# can access and store in new variable using .slice method
# rejoin array and return
# algorithm 
# take string split into array using (" ") as delimiter
# iterate through that array adding the first and last letter of each element to letters variable
# use []= to reassign the letters approriately 
# rejoin array using .join(" ")


def swap(string)
arr = string.split(" ")
arr.map do |word|
  letters = "" 
  letters.prepend(word[0])
  letters.prepend(word[-1])
  word[0], word[-1] = letters[0], letters[-1]
end
arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

#characters can be swapped using a piece of idiomatic ruby
# a, b = b, a
# This essentially creates a temporary array so the characters dont overwrite prematurely
# multiple assignment syntax