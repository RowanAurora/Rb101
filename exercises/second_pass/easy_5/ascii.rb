=begin
P - Understand the Problem
Problem: Write a method that determines and returns the ascii string value of a string.

Implicit rules:
-always string input

Explicit rules:
- you may use .ord
-ascii value of a string is the sum of the chacters ascii values
Input:string

Output:integer


E - Examples Test cases
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Seperate string into an array of chacters
iterate through the array, determining the ascii value
add each chacters value to a variable
return variable

C - Code (with intent)
=end

def ascii_value(string)
  result = 0
  string.chars.each do |char|
    result += char.ord
  end
  result
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0