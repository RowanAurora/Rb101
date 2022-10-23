# Problem
# Write a method that returns a list of all substrings of a string that are palindromic.
# rules 
# -case sensitive
# -should use method from last exercise
# -single characters are not palindromic

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

def palindromes(string)
  result = []
  substrings(string).each do |string|
    string == string.reverse && string.size > 1 ? result << string : nil
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') 
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

def palindromes(string)
  result = []
  substrings(string).each do |string|
    string.downcase == string.downcase.reverse && string.size > 1 ? result << string : nil
  end
  result
end