=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

PROBLEM:
Write a method that takes a string and returns a NEW string with every character doubled

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

ALGORITHM: 
Define method `repeater` to accept 1 string Argument
split string into array of characters
iterate through argument, doubling each character
capture return of interation in `result` variable
return result

code
=end

def repeater(string)
  result = string.chars.map do |char|
    char * 2
  end
  result.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''