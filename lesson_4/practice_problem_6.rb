flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = flintstones.map do |names| 
  names[0, 3]
end 

p flintstones