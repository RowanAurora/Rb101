LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messege.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num == "0" || num.to_i != 0 
end

def number?(flt)
  flt.to_i.to_s == flt || flt.to_f.to_s == flt
end  

def operation_to_messege(op)
 operation_name = case op
                  when '1'
                    'Adding'
                  when '2'
                    'Subtracting'
                  when '3'
                    'Multiplying'
                  when '4'
                    'Dividing'
                  end
  operation_name
end

prompt('welcome')

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

puts("Hi #{name}!")

loop do
  number1 = ""
  loop do
    prompt('first_number')
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt('not_valid')
    end
  end

  number2 = ""
  loop do
    prompt('second_number')
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt('not_valid')
    end
  end
  
  operator_prompt = <<-MSG
    What operation would you like?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  puts "=>#{(operator_prompt)}"

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('choose_right')
    end
  end

  puts ("=>#{operation_to_messege(operator)}the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  puts("=> The result is #{result}.")

  prompt('again')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('bye')

#Interesting edge cases with string interpolation.
# Not yet sure how to use that with yaml file