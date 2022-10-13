# problem: get a number from user, get choice of calculation
# based on answer, calculate the sum of integers between 0 and answer or
# the product of integers between 1 and answer
# input: number, choice
# output: sum or product

# num = 1 * 2 * 3 * 4 * 5 * 6

# puts num

def compute_sum(number)
  total = 0
  (1..number).each { |num| total += num }
  total
end

def compute_product(number)
  total = 1
  (1..number).each { |num| total *= num}
  total
end

answer = nil

loop do
  puts "Please enter an integer greater than 0:"
  answer = gets.chomp
    break if  answer.to_i != 0 && answer.to_i.to_s == answer
  puts "Invalid input, try again."
end

operation = nil

loop do
  puts "Enter 's' for sum or 'p' for product"
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts "Invalid input, only s or p"
end

case operation
  when "s"
    puts "The sum of integers between 1 and #{answer.to_i} is #{compute_sum(answer.to_i)}"
  when "p"
    puts "The product of integers between 1 and #{answer.to_i} is #{compute_product(answer.to_i)}"
  end


# answer = nil

#   loop do
#     puts "Please enter an integer greater than 0:"
#     answer = gets.chomp
#       break if  answer.to_i != 0 && answer.to_i.to_s == answer
#     puts "Invalid input, try again."
#   end
  
#   operation = nil
  
#   loop do
#     puts "Enter 's' for sum or 'p' for product"
#     operation = gets.chomp.downcase
#     break if operation == 's' || operation == 'p'
#     puts "Invalid input, only s or p"
#   end

# current_number = 2
# counter = 1
# new_number = 1
#   if operation.start_with?("s")
#     loop do
#       break if counter == answer
#       new_number += current_number
#       current_number = new_number
#       counter += 1
#     end
#     puts "The sum of the integers between 1 and #{answer} is #{current_number}."
#   elsif operation.start_with?('p')
#     loop do
#       break if counter == answer + 1
#       new_number *= counter
#       counter += 1
#     end
#     puts "The product of the integers between 1 and #{answer} is #{new_number}."
#   end
