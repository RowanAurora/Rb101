=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

=begin
P - Understand the Problem
Problem:
Write a method that take a single string argument and returns a new string that contains the original vlaue of the arugment with the first character of every word capitalized and all others lowercase
Implicit rules:
- no empty string
Explicit rules:
- All sequence of characters surrounded by spaces are words

Input: string

Output: string with each word capitalized


E - Examples Test cases
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Split the string into an array using the spaces as delimiters
iterate though the new Array
  -capitalize each word as we iterate
rejoin the array using " "
return the new String

C - Code (with intent)
=end
def word_cap(string)
  result = string.split(" ").map do |word|
                            word.capitalize
  end.join(" ")
end
                      


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

