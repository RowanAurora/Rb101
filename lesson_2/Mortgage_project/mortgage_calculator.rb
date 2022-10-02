require 'yaml'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('mort_text.yml')

def number?(num)
  (num.to_i.to_s == num || num.to_f.to_s == num) 
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "  #{message}"
end

prompt('welcome')
puts " "

loop do
  loan_amount = ''
  loop do
    prompt('amount')
    loan_amount = gets.chomp.tr(" ", "")
    if number?(loan_amount)
      break
    else
      prompt('valid')
    end
  end

  monthly_interest = ''
  loop do
    prompt('annual')
    apr = gets.chomp.tr(" %", "")
    if number?(apr) && apr.to_f.to_s != '0.0'
      apr = (apr.to_f * 0.01)
      monthly_interest = (apr.to_f / 12)
      break
    else
      prompt('valid')
    end
  end

  duration_months = ''
  loop do
    prompt('duration')
    duration = gets.chomp.tr(" ", "")
    if number?(duration)
      duration_months = (duration.to_f * 12)
      break
    else
      prompt('valid')
    end
  end

  monthly_payment = loan_amount.to_f * (monthly_interest.to_f / (1 - (1 +
     monthly_interest.to_f)**(-duration_months.to_f)))

  puts "Your monthly payment is $#{format('%.2f', monthly_payment)}"

  prompt('again')
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt('bye')

