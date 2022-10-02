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

def win?(first, second)
  OUTCOMES[first.to_sym].include?(second)
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{INSTRUCTIONS.join(', ')}")
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
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice} Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
