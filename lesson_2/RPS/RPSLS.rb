require 'yaml'
require 'io/console'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('rpsls.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

VALID_CHOICES_2 = %w(r p sc l sp)

INSTRUCTIONS = %w(Rock(r) Paper(p) Scissors(sc) Lizard(l) Spock(sp))

VICTORIES = 3

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

def display_results_total(player_count, computer_count)
  if player_count == VICTORIES
    prompt("big_win")
  elsif computer_count == VICTORIES
    prompt("big_lose")
  end
end

def scoreboard(count, total)
if count == VICTORIES
  total += 1
else 
  total
end
end

def win_update(chose, other_choice, count)
  if win?(chose, other_choice)
    count += 1
  else
    count
  end
end  

def reformat_choice(choice)
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
choice
end

answer = ''
player_total = 0
computer_total = 0

prompt('welcome')
puts " "
loop do
  player_count = 0
  computer_count = 0
  if answer.downcase.start_with?('y') then prompt('huzzah') end

  if player_total != 0 || computer_total != 0
    puts "Player games: #{player_total} Computer games: #{computer_total}"
  end

  loop do
    choice = ''
    loop do
      puts("Choose one: #{INSTRUCTIONS.join(', ')}")
      choice = Kernel.gets.chomp.downcase.strip

      if VALID_CHOICES.include?(choice) || VALID_CHOICES_2.include?(choice)
        break
      else
        prompt("valid")
      end
    end
    choice = reformat_choice(choice)
    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{choice} Computer chose: #{computer_choice}"

   player_count = win_update(choice, computer_choice, player_count)
   computer_count = win_update(computer_choice, choice, computer_count)
    

    display_results(choice, computer_choice)

    display_results_total(player_count, computer_count)

    puts "You: #{player_count}, Computer: #{computer_count}"

    player_total = scoreboard(player_count, player_total)
    computer_total = scoreboard(computer_count, computer_total)
  
    if player_count == VICTORIES || computer_count == VICTORIES then break
    end
  end

  prompt("again")
  answer = Kernel.gets.chomp

  clr = ''
  if answer.downcase.start_with?('y')
    prompt("clear")
    clr = gets.chomp
  end

  if clr.downcase.start_with?('y') then system("clear") end

  break unless answer.downcase.start_with?('y')
end

prompt("bye")
