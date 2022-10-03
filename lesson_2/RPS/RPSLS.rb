require 'yaml'
require 'io/console'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('rpsls.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

VALID_CHOICES_2 = %w(r p sc l sp)

INSTRUCTIONS = %w(Rock(r) Paper(p) Scissors(sc) Lizard(l) Spock(sp))

OUTCOMES = {
  spock: ['scissors', 'rock'],
  scissors: ['paper', 'lizard'],
  paper: ['rock', 'spock'],
  rock: ['lizard', 'scissors'],
  lizard: ['spock', 'paper']
}

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def win?(first, second)
  OUTCOMES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('win')
  elsif win?(computer, player)
    prompt("lose")
  else
    prompt("tie")
  end
end

prompt('welcome')
puts " "
loop do
  player_count = 0
  computer_count = 0

  loop do
    choice = ''
    loop do
      puts("Choose one: #{INSTRUCTIONS.join(', ')}")
      choice = Kernel.gets.chomp.downcase.strip

      case choice
      when 'r'
        choice = 'rock'
      when 'p'
        choice = 'paper'
      when 'sc'
        choice = 'scissors'
      when 'sp'
        choice = 'spock'
      when 'l'
        choice = 'lizard'
      end

      if VALID_CHOICES.include?(choice) || VALID_CHOICES_2.include?(choice)
        break
      else
        prompt("valid")
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{choice} Computer chose: #{computer_choice}"

    if win?(choice, computer_choice)
      player_count += 1
    elsif win?(computer_choice, choice)
      computer_count += 1
    end

    display_results(choice, computer_choice)

    if player_count == 3
      prompt("big_win")
    elsif computer_count == 3
      prompt("big_lose")
    end

    puts "You: #{player_count}, Computer: #{computer_count}"

    if player_count == 3 || computer_count == 3 then break
    end
  end

  prompt("again")
  answer = Kernel.gets().chomp()

  clr = ''
  if answer.downcase.start_with?('y')
    prompt("clear")
    clr = gets.chomp
  end

  if clr.downcase.start_with?('y') then $stdout.clear_screen end

  break unless answer.downcase().start_with?('y')
end

prompt("bye")
