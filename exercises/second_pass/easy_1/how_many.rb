# problem:
# Write a method that counts the number of occurrences of each element in a given array
# rules
# -words are case sensitive

# data structures :
# the solutions output is presented as a hash
# the input is an array
# strings and integers are required.

# algorithn

# initialize a hash 
# call uniq on the input array
# interate though the list using each
#  - initialize a key with the interation
#  - value is equal to the return on the coutn mehtod called on the list,
#    using the interator as the arugment
# return the hash


# output hash

def count_occurrences(vehicles)
  hash = {}
  vehicles.uniq.each { |key| hash[key] = vehicles.count(key) }
  hash
end

  vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]
  
  p count_occurrences(vehicles)

