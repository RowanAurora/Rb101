# Problem: 
# Write a method that returns a list of all substring of a string that start at the begining of 
# the original string. the return should be sorted shortest to longest
# rules
# explicit
# -order substrings by lenght
# -each substring starting at first character (a, ab, abc, abcd)
# -last is full string
# implicit
# -one word
# -return is an array

# input: string output: array of substrings

# data structures:
# - The method here takes a string object
# -returns an array
# - shoudl use a variable and an array in the conversion from input to output

# algorithm:
# - initialize an array to store substrings
# - initialize a variable that represents the substrings
# - add a single character to the variable
# - add the variable to the array
# - repeat untill variable == string
# - sort array to size
# - return array

# code :

def leading_substrings(string)
  array = []
  substring = ""
  string.each_char do |char|
    substring += char
    array << substring
  end
  array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
result
end

# intitalizes array: result
# calls upto method on integer 0, with limitor being the string size - 1
# calls.slice on the string using the iterated integer as the number of characters starting 
#from 0 index
# add each to string
# returns result