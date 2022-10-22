# problem: write a method that takes a string argument and returns a string
# that contains the first character of each word capitalized and others lowercase

# input:string output:a new string with the first letter of each word capitalized
# rules 
# -any sequence of non blank characters is a word
# implicit
# -only strings

# .capitalize only does the first word so not JUST that

# data structure: strings, maybe arrays to splitup and modify

# algorithm:
# -take input string and use .split to seperate words into array
# -interate throught the array using .map to transform the string
# -can join with " " as the delimeter

# code:

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# string.split.map(&:capitalize).join(" ")
# I always forget about the sugar of (&:method)