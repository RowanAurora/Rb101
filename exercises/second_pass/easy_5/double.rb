=begin
P - Understand the Problem
Problem: Write a method that takes a string argument and returns a new string 
with all the duplicate characters removed.

Implicit rules:

Explicit rules:
remove duplicate characters
do not use squeeze methods
Input:string

Output: string with duplicates characters removed


E - Examples Test cases
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Initialize a blank array
Iniitalize a compare variable as empty string
Iterate through input string chacter by character
compare each character to compare variable
if its not the same, add to array initialize in step 1
reassign compare variable to current element
join result array into a string


C - Code (with intent)
=end

def crunch(string)
  result = []
  compare = ''
  string.each_char do |char|
    result << char unless char == compare  
    compare = char
  end
  result.join
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''