=begin
P - Understand the Problem
Problem:Write a method that takes a string of digits and returns an integer
        the integer should be negative if the string has '-' leading and positive with no sign otherwise


Implicit rules:

Explicit rules:
no to_i type methods
always a valid number

Input:string, with or without '-' '+'

Output: positive or negative integer.


E - Examples Test cases
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Check if input string starts with '-' or '+'
if negative, shift the string to remove the first character
  - convert to integer
  -multiply by -1
if positive, shift the string to remove first character
  -convert to integer
if no sign, convert to integer.
return integer converted from string.

C - Code (with intent)
=end
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  total = 0
  counter = string.size 
  multiply = 1
  num = 0
  loop do
    counter -= 1
    num = DIGITS[string[counter]]
    num *= multiply
    multiply *= 10
    total += num
    break if counter == 0
  end
  total
end

def string_to_signed_integer(string)
  if string.start_with?('-')
    string.delete_prefix!('-')
    string_to_integer(string) * -1
  elsif string.start_with?('+')
    string.delete_prefix!('+')
    string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100