# sorting
#  mostly performed on arrays, since they appear by index order is importnat
# strings dont have a sorting method
# hashes can be sorted but rarely are
# sorting is setting the order in collection based on criteria
# sort and sort_by are common methods for this
# sorting compares items in collection to each other and orderes them accordingly
# numbers and letters are sorted as expected

# <=> spaceship operator
# compares each element returnign -1 0 or 1 depending on comparison
# returns nil if different objects
#with letters, order is based on position in ascii table .ord will say its position
# uppcase come before lower case
#digits and punctuation comes before letters
#accented and other characters are in extended table, and come after main table

#.sort
# can be called with a block, needs two arguments
[2,3,4,5,6].sort { |a, b| a <=> b } # ==> [1,2,3,4,5]
[2,3,4,5,6].sort { |a, b| b <=> a } # ==> [5,4,3,2,1]


['arc', 'bat', 'cape', 'ants', 'cap'].sort # => ["ants", "arc", "bat", "cap", "cape"]

[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
[['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2] ]
# sort did not need to evaluate the itegers, or it would throw an error

#.sort_by
#usually called with a block
    ['cot', 'bed', 'mat'].sort_by do |word|
      word[1]
    end
    # => ["mat", "bed", "cot"]
#sorts using characters at index 1 
# sort_by on a hash needs two arguments the key and the value
    people.sort_by do |_, age|
      age
    end
    # => [[:Mike, 18], [:john, 25], [:Kate, 27]]
#sort_by always returns an array, even on a hash. to_h will turn back to hash
#sort on symbols calls to_s on them first

#the .sort! and sort_by! methods return the same collection but sorted. only available for arrays
#.min returns the element with the lowest sort order using <=>
# with an argument returns the (nth) minimum element
# with a block similar to sort

#.max is the same but with the max sorted element

#.minmax returns array with min and max element. equal elements are unstable

#min_by .max_by and .minmax_by returns element for which block determins the corresponding element