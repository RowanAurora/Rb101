# Working with hashes

# To access

# hash[key] shows value

# to add new pair

# hash[new key] = value
# assigns value to the new key in the hash

# nested hash

# Hash[key][subkey] => value

# hash.each |key, sub_hash| 
#   sub_hash.each |key, value|
# end

# hash.each |key, subhash|
#     subhash[subkey] => value

# .each - iterates
# returns self, not constious of return value of block. does not return a new collection. is lenght of original
# -for doing an action (puts..etc)

# .select - selects throug iterating.
# only considers truthyness of block. returns new collection. same or shorter length
# -for selecting based on criteria of block

# .map -transforms while iterating
# return value of the block is considered. returns a new collection, lenght of original
# - for changing the caller with criteria of the block
#