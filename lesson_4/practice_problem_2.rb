ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum


total = 0
counter = 0

loop do
  
  break if counter == ages.values.size 

  total += ages[ages.keys[counter]]
  counter += 1
end

p total