# Problem: write method that determines and returns the ascii string value
# of an argument string.
# -the ascii value is the sum of ascii values of everycharacter in the string
# input : string output :integer representing ascii value

# p ('a'.ord) 

def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# create a variable to hold the total.
# call .chars on string to get each character seperate
# iterate through using .each as we dont need to use the return value of the block
# call .ord on each character, passing that return value to the += operator to add
# to the total variable
# put the total variable on the last line to return it.

# 97.chr