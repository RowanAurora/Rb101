flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
count = 0
hash = {}

flintstones.each_with_index do |names, index|
  hash[names] = index
end

p hash