require 'yaml'
WORDS = YAML.load_file('mort_text.yml')

def number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def flt(input)
  input.to_f
end

loan_amount = ''
monthly_payment = ''
apr = ''
monthly_interest = ''
duration_months = ''

puts WORDS['welcome']

loop do
  loop do
    puts WORDS['amount']
    loan_amount = gets.chomp
    if number?(loan_amount)
      break
    else
      puts WORDS['valid']
    end
  end

  loop do
    puts WORDS['annual']
    apr = gets.chomp
    if number?(apr)
      apr = (apr.to_f * 0.01)
      monthly_interest = (apr.to_f / 12)
      break
    else
      puts WORDS['valid']
    end
  end

  loop do
    puts WORDS['duration']
    duration = gets.chomp
    if number?(duration)
      duration_months = (duration.to_f * 12)
      break
    else
      puts WORDS['valid']
    end
  end

  monthly_payment = loan_amount.to_f * (monthly_interest.to_f / (1 - (1 +
     monthly_interest.to_f)**(-duration_months.to_f)))

  puts "Your monthly payment is #{monthly_payment.to_i}."

  puts WORDS['again']
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

puts WORDS['bye']
