# # Loops_1
# # Runaway loops
# loop do
#   puts 'just keep printing...'
#   break
# end

# #loopception

# loop do
# puts 'This is the outer loop.'

# loop do
#   puts 'This is the inner loop.'
#   break
# end
# break
# end

# puts 'This is outside all loops.'

# # Control the loop

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations >= 6
# end

# #loop on command

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == "yes"
# end

# say hello

say_hello = true
counter = 0

while say_hello 
  puts 'Hello!'
  counter +=1
  counter == 5 ? say_hello = false : say_hello = true
end

#print while

numbers = *(0..100)
counter = 0
while counter != 5
  puts (numbers.sample)
  counter += 1
end

# Count up

count = 1

until count > 10
  puts count
  count += 1
end

#print until  

numbers = [7, 9, 13, 25, 18]

count = 0

until numbers[count] == nil 
  puts numbers[count]
  count += 1
end

# That's odd

for i in 1..100
  puts i if i.odd?
end

# greet your friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts "Hello, #{name}!"
end
