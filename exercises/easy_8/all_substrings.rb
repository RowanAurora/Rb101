# problem: 
# Write a method that returns a list of all substrings of a string
# rules
# explicit
# -ordered by the starting characters position in original string
# - should use leading substring method previously written
# implicit
# - returns an array 

# Data structures:
# - Takes a string as arguments
# - returns an array of substrings
# - will use variable object and array to convert input to output

# algorithm
# -initialize an array for the results
# -iterate through, adding each character to a variable 
# -after each character is added, add that to the array
# - do this for each character 

  def leading_substrings(string)
    array = []
    substring = ""
    string.each_char do |char|
      substring += char
      array << substring
    end
    array
  end

def substrings(string)
  arr = []
  count = 0
  while count < string.size
   arr << leading_substrings(string[count, string.size])
   count += 1
  end
  arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]