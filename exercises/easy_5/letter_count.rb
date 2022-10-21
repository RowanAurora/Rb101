# problem : write a method that takes a string with one or more words
# seperated by " " and returns a hash that shows the number of words of different sizes
# rules
# Explicit
# -accept strings
# -words are any string of characters that do not have a space
# Implicit
# - punctuation on words counts as character counts
# -spaces do not count

# we can get the keys by forming an array by calling split on the strong and size on each
#can get the value calling count() with each unique part of the former array

#examples/tests

# hsh = {}
# arr = 'Four sco and seven.'.split
# arr.map! { |word| word.size }
# arr.uniq.sort.each do |key|
#   hsh[key] = arr.count(key)
# end

# hsh

# data structures :
# 1. string we take as an argument
# 2. we need to split that up into an array to count and tally each word
# 3. we need to put this information into a hash


#algorithm

# - iniatilze a hash object 
# -take input string and split to array
# - take that array and convert the words to character counts
#     -use .map! to destructively iterate thought the array
#     - call the size method to convert each element(word) to its character count
# - iterate though the returned array
#     -call .uniq to remove duplicates to avoid later overwrite
#     -call .sort to sort the sizes
# - assign key value pairs to the hash in step one, the key being each element from the array
# - the value for each key being the return of calling count on arr for each element of the array



def word_sizes(string) 
  hsh = {}
  arr = string.split.map { |word| word.size }
  arr.uniq.sort.each do |key|
    hsh[key] = arr.count(key) 
  end
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}