ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if do |name, age|
  age >= 100
end

p ages

young_age = {}
young_age = ages.select { |name, age| age < 100 }
p young_age

ages.keep_if {|name, age| age < 100}
p ages