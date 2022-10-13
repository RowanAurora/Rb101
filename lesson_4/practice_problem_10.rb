munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# munsters["Herman"]["age_group"] = "kid" 
# p munsters

counter = 0

loop do
  break if counter == munsters.keys.size

  if munsters[munsters.keys[counter]]['age'] <= 17
    munsters[munsters.keys[counter]]["age_group"] = "kid"
    counter += 1
  elsif munsters[munsters.keys[counter]]['age'].between?(17, 65)
      munsters[munsters.keys[counter]]["age_group"] = "adult"
      counter += 1
  elsif munsters[munsters.keys[counter]]['age'] >= 65
    munsters[munsters.keys[counter]]["age_group"] = "senior"
    counter += 1
  end
end

p munsters

# haven't thought about using a case statement inside a block like that before!

# munsters.each do |name, details|
#   case  details['age']
#   when 0...18
#     details['age_group'] = 'kid'
#   when 18...65 
#     details['age_group'] = 'adult'
#   else
#     details['age_group'] = 'senior'
#   end
# end