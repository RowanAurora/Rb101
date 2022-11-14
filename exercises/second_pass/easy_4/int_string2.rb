=begin
P - Understand the Problem
Problem: Convert integer to string including the sign

Implicit rules:

Explicit rules:
to to_s or format uses
Input:integer

Output:signed string


E - Examples Test cases
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Check if input is > 0
if yes, append '+' to string
if no, append '-' to string
if 0, no append


C - Code (with intent)
=end
require 'pry' 
INT_STRING = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(INT_STRING[remainder])
    break if number == 0 
  end
  result
end

def signed_integer_to_string(int)
  case int <=> 0
  when -1 then integer_to_string(-int).prepend('-')
  when +1 then integer_to_string(int).prepend('+')
  when 0 then integer_to_string(int)
  end
end
  
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) == '0'

#I struggle with rememeber math concepts appearently s