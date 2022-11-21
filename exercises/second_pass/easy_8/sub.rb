=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
PROBLEM:
  Write a method that returns a list of all substrings of a string. 
  ordered by where in the string the sub string begins, by size.
input: String
output: array of substrings ordered by appearence and size

test cases : substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'

ALGORITHM:
Initalize a `result` variable to an empty Array
initialize end_count to 1
intitlize start_count to 0
Create a looping strucutre
reset end_count to 1
create a second loop structure 
add substrings to results by index using the counts to determine 
incriment end count
exit second loop when end count is size of size of String - start_count
incriment start_count
break when start count is equal to the size of string - 1
exit first loop
return array

 code:
=end

def substrings(string)
  result = []
  start_count = 0
  loop do
    end_count = 1
    loop do 
    result << string[start_count, end_count]
    break if end_count == (string.size) - start_count
    end_count += 1
    end
  start_count += 1
  break if start_count == string.size
  end
  result
end

   p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde',
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e']