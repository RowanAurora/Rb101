answer = []
loop do
  puts "Enter a number"
  answer << gets.chomp
  if answer.last.to_i.to_s != answer.last
    puts "not a valid number"
    answer.pop
    next
  end
  break if answer.size == 6
end

reference_number = answer.pop

if answer.include? reference_number
  puts "The number #{reference_number} appears in #{answer}"
else
  puts "The number #{reference_number} does not appear in #{answer}"
end
  