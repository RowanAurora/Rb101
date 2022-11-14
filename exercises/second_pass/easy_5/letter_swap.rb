=begin
P - Understand the Problem
Problem: write a method that takes a string and returns which the first and last letters of words are swapped.

Implicit rules:

Explicit rules:
-words are at least one letter. always at least 1 word
- string will be nothign but letters and spaces
Input:String

Output:String, but with first and last letters of each word swapped


E - Examples Test cases
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Take input and split string into array between words


C - Code (with intent)
=end

def swap_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  new_string = string.split.map do |word|
    swap_letters(word)
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'