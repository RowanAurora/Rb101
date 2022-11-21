=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:

Copy Code
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

problem:
Write a method that returns a list(array) of all substringts on a string that start at the beggining of the original string. Arranged in order of size. 
input: String
output: Array of all substrings starting with first character
Rules:
-no spaces
-sort by lenght
-starting with first character for each

Algorithm
Initialize an array `result`
Initialize a counter to 1
Start a loop structure
add characters to the array starting at index 0, number of characters being the counter
incriment the count by 1
break loop when the count is the full string lenght
sort result array by size
return array.
 code: 
=end
def leading_substrings(string)
  result = []
  counter = 1
  while counter <= string.size
    result << string[0, counter] 
    counter += 1
  end
  result.sort_by { |strings| strings.size }
end 


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']