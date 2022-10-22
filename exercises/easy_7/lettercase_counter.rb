# problem: write a method that takes a string and returns a hash that contains 3 entries
# 1, the lowercase character count, 2, the uppcase character count and 
# 3 the count of neither
# input: a string output: a hash representing 3 character counts
# rules
# - all alphabetic character counts in the first two hash intries
# - all non alphabetic characters (spaces included) in the third
# test:
# string = "shkjg LJHILUGn"
# letter_count_hash = Hash.new(0)
# letter_count_hash[:lowercase] = string.count('a-z')


# data structures:
# - A hash with default values to store the numbers in
# - a string that is input

# algorithm
# - Initialize Hash with keys representing catagories and default value of 0
# - add each character set count with .count 
#   -('a'-'z')('A'-'Z')(^'A'-'z')
# return the hash

# code:

def letter_case_count(string)
  letter_count_hash = Hash.new(0)
  letter_count_hash[:lowercase] = string.count('a-z')
  letter_count_hash[:uppercase] = string.count('A-Z')
  letter_count_hash[:neither] = string.count('^A-z')
  letter_count_hash
end

p letter_case_count('abCdef 123') 
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }