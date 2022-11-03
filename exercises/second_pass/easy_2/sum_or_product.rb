# problem :
# write a program that asks the user to enter an integer greater than 0
# then asks the user if they want the sum or product of all numbers between
# 1 and integer
# rules
# -input integer greater than zero
# - add all the nubmers between 1 and the number or
# -multiply all the numbers

# data structure
# - integers

# algorithm

# prompt for user input of integer
# record integer
# prompt for user input of sum or product
# record

# generate variable with all numbers between one and integer
# -calculate either sum or product
# -display

# code

number = 0
answer = nil

def number_input
  number = 0
  loop do
    puts "Please enter an integer greater than 0:"
    number = gets.chomp
    break if number.to_i.to_s == number
    puts "error input" 
  end
  number.to_i
end

def operation_input
  answer = ''
  loop do
    puts "Enter 's' to compute sum, 'p' to computer the product."
    answer = gets.chomp.downcase
    break if answer.start_with?('s') || answer.start_with?('p')
    puts "error input"
  end
  answer
end

def sum(number)
  total = 0
  1.upto(number) { |num| total += num }
  total
end

def product(number)
  total = 1
  1.upto(number.to_i) { |num| total *= num }
  total
end

number = number_input
answer = operation_input


if answer.start_with?("s")
  puts "The sum of the integers between 1 and #{number} is #{sum(number)}."
else
  puts "The product of the integers between 1 and #{number} is #{product(number)}."
end