=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

=end
=begin
P - Understand the Problem
Problem:write a method that takes a string and then returns a hash that contains 3 entries.
- one representing number of character that are lowercase
-one representing that characters that are uppercase
-one representing all other characters

Implicit rules:

Explicit rules:

Input:

Output:


E - Examples Test cases
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
initialize a hash object
initialize the key :lowercase to the number of lower case
repeat for uppercase
initialize the key :misc to the string.size - the result of last two operations.
return the Hash

C - Code (with intent)
=end
def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.count("/a-z/")
  hash[:uppercase] = string.count("/A-Z/")
  hash[:neither] = (string.size) - (hash[:lowercase] + 
                                   hash[:uppercase])
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
