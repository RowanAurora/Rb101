# Problem: write a method that takes an array of integers between 1 and 19 and 
# returns an array of those integers sorted based on thier english words
# rules
# - numbers 1 to 19
# - sort according to string name in enligh

# input: array of integers
# output: array of integers

# date structures
# the method must take an array and return an array
# the most obvious solution to me is to use a hash to store the english words as values
# to the integers as keys and reference that.

# algorithm
# -initialize a hash as a constant that contains the english words pair with int. keys
# - define the method alphabetic_number_sort that accepts an array argument
# - call sort_by on that array 
#     - in the block, use each number to retrieve its english string
# -this should return the new array
NUMBER_WORDS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
  19 => 'ninteen'
}


def alphabetic_number_sort(array)
  new_array = array.sort_by do |num|
    NUMBER_WORDS[num]
  end
  new_array
end

p alphabetic_number_sort((0..19).to_a) 