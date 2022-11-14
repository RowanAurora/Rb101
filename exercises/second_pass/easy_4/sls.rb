=begin
P - Understand the Problem
Problem: Write a method that takesa two strings as arguments, picks the longest, and then returns the result
          of concatenating the shorter string, longer string, shorter string.

Implicit rules:

Explicit rules:
- Strings will be different lengths
- Two string arguments
Input: two strings of different sizes

Output: one string of shorter string, longer, shorter


E - Examples Test cases
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
If statement
- if first is longer than second
- if second is longer that first
- concatenate shorter, longer shorter

C - Code (with intent)
=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
