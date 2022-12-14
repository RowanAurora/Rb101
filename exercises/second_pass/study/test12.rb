
=begin
Given a string of words, you need to find the highest scoring word.
Each letter of a word scores points according to its position in the 
alphabet: a = 1, b = 2, c = 3 etc. You need to return the highest scoring word as a string.
If two words score the same, return the word that appears earliest in the original string.
All letters will be lowercase and all inputs will be valid.

PROBLEM: Write a method that scores each word based on letter value (a=1, b=2) and return the highest scoring word 


RULES : 
- downcased 
- words sepereted by spaces 
INPUT: String sentence

OUTPUT: single word as a string 

NOTES:
create a range object - as a constant 
Iterate though the words 
- iterate character by characters 
add to new array, return the index of the highest , use to grab the word from word word arra y 

ALGORITHM:

Initialize a constant to ('a'..'b').to_a with one item appended 
Define the method 'high'
initliaze  result_arr = []
Break input into words array 
  Iterate though the array
    initliaze letter_score 
      Iterate though characters in word 
      add the index number to letter_score 
    - add letter_score to result_arr 
Find highest number in result_arr, find its index 
use index for index retriveal on words_array
=end

ALPHABET = ('a'..'z').to_a.unshift('9')

def high(string)
  result_arr = []
  word_array = string.split(' ')
  word_array.each do |word| 
    letter_score = 0 
    word.each_char do |letter| 
      letter_score += ALPHABET.index(letter)
    end
    result_arr << letter_score
  end
  word_array[result_arr.index(result_arr.max)] 
end
p high('abc bbb ccc') == "ccc"

# (6 6 9)

 p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano' 
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'