#ask for two numbers
#ask for operation to perform
#perform the operation on the numbers
#out put the result.

# answer = Kernel.gets().chomp()
# Kernal.puts(answer)
def prompt(messege)
  Kernel.puts("=> #{messege}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_messege(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("This is calculator! Enter your name")

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else 
    break
  end
end

prompt("Hi #{name}!")

loop do
  number_1 = "" 
  loop do
    prompt("Whats the first number?")
  number_1 = Kernel.gets().chomp()

  if valid_number?(number_1)
    break
  else 
    prompt("Hmm that doesn't look like a valid number")
  end
  end

  number_2 = ""
  loop do 
  prompt("Whats the second number?")
  number_2 = Kernel.gets().chomp()

  if valid_number?(number_2)
    break
  else 
    prompt("Hmm that doesn't look like a valid number")
  end
  end
  operator_prompt = <<-MSG
    What operation would you like?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator =''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1 2 3 or 4.")
    end
  end

  prompt("#{operation_to_messege(operator)}the two numbers...")

  result = case operator
           when '1'
            number_1.to_i() + number_2.to_i()
           when '2'
            number_1.to_i() - number_2.to_i()
           when '3'
            number_1.to_i() * number_2.to_i()
           when '4'
            number_1.to_f() / number_2.to_f()
  end
          
        

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to calculate)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end


prompt('Thank you for using the calculator.')