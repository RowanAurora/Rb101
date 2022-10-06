# 1. see if 'Spot' is present in hash

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.member?("Spot")
ages.include?("Spot")
ages.key?('Spot')

# 2. convert string to examples 

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

# 3. combine the hashes

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# 4. find if the name Dino is in the string

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match?"Dino"

# 5. Show an easier way to write the string

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 6. Add Dino

flintstones << "Dino"

#7. 

flintstones << "Dino" << "Hoppy"
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))

#8.

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice("Few things in life are as important as ")
advice.slice!("Few things in life are as important as ")

# slice returns the deleted section and leaves the original alone
# If advice = advice.slice  advice would read "Few things in life are as important as "

# 9. statement = "The Flintstones Rock!"
statement.count("t")

# 10.  center in 40 chars

title = "Flintstone Family Members"
title.center(40)

# Assignment seemed to be mostly method searching. Found some neat methods 