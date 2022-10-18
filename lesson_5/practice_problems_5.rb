munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


# problem: figure out total age of family given nested hash
# access each sub hash
# steps : retrieve value of age key from each subhash
# total the values
# total = 0

# munsters.each_value do |hash|
#   total += hash["age"] if hash["gender"] == "male"
# end

# p total

total = 0

munsters.each_value do |hash|
  total += hash["age"] if hash["gender"] == "male"
end