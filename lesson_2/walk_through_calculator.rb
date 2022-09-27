#ask for two numbers
#ask for operation to perform
#perform the operation on the numbers
#out put the result.

# answer = Kernel.gets().chomp()
# Kernal.puts(answer)

Kernel.puts("This is calculator!")

Kernel.puts("Whats the first number?")
number_1 = Kernel.gets().chomp()


Kernel.puts("Whats the first number?")
number_2 = Kernel.gets().chomp()

Kernel.puts "What operation would you like to perform 1) add 2) substract 3) multiply 4) divide"
operator = Kernel.gets().chomp()

if operator == "1"
  result = number_1.to_i() + number_2.to_i()
elsif operator == "2"
  result = number_1.to_i() - number_2.to_i()
elsif operator == "3"
  result = number_1.to_i() * number_2.to_i()
else 
  result = number_1.to_f() / number_2.to_f()
end

Kernel.puts("The result is #{result}.")
