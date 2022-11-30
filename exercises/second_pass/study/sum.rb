=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the 
sum or product of all numbers between 1 and the entered integer.

PROBLEM:
  Write a program that ask the user to enter an interger greater than 0, 
  then ask if the user wants to determine the sum or products between 1 and input

  input :(by user) integer

  output: sum or product of 1 - input number

  algorithm: 

  Sum method
    -generate a range object and sum
  product method  
    -generate an range object and reduce 

  Ask for number input
  -validate
  Ask if they want sum(s) or product(p)
  -validate
  return appropriate value


=end



def summer(int)
  (1..int).to_a.sum
end

def product(int)
  (1..int).to_a.reduce(&:*)
end

def valid(string)
  string.class == Integer
end

def gather_number
 loop do
   puts "Input a number please :)"
   input = gets.chomp.to_i
   return input if valid(input)
  end
end

def s_or_p
  loop do
    puts "Sum(s) or Product(p)?"
    input = gets.chomp.downcase
    return 's' if input.start_with?('s')
    return 'p' if input.start_with?('p')
    puts "Error"
  end
end

num = gather_number()
operation = s_or_p()

if operation == 's'
  puts summer(num)
elsif operation == 'p'
  puts product(num)
end
puts "goodbye :)"