# loops 2

count = 1

loop do
(count.odd?) ? (puts "#{count} is odd!") : (puts "#{count} is even!")
  count += 1
  break if count > 5
end

# catch the number

loop do
  number = rand(100)
  puts number
  number <= 10 ? break : next
end

process_the_loop = [true, false].sample


if process_the_loop
  loop do
  puts "The loops was processed!"
  break
  end
else 
  puts "The loops wasn't processed!"
end

# Get the sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer! Try again!"
  end
end

# insert numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size >= 5
end
puts numbers

# empty the array

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  names.delete_at(0)
  p names
  break if names.size == 0 
end

Stop counting

5.times do |index|  
  puts index
  break if index == 2
end

# only even

number = 0

until number == 10
  number += 1
  (number.even?) ? (puts number) : (next)
end

# first to five

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break if number_a == 5 || number_b == 5
  puts "5 was reached!"
end

# greeting

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings != 0
  greeting
  number_of_greetings -= 1
end