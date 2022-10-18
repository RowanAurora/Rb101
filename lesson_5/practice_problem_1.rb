arr = ['10', '11', '9', '7', '8']
arr.sort do |a, b| 
  b.to_i <=> a.to_i
end

# to sort by numeric value, each element has to be converted to integer,
# then compared to each other. so inside the block, convert in the comparison
