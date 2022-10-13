flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.start_with?('Be')
    puts index
  end 
end

p flintstones.index { |name| name[0, 2] == "Be"}


counter = 0

loop do
  break if counter >= flintstones.size
  if
  flintstones[counter][0, 2] == ('Be')
  puts counter
  counter += 1
  else
  counter += 1
  end
end