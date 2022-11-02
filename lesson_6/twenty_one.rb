DECK = {
  hearts: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  diamonds: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  clubs: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  spades: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace']
}
SUIT = [:spades, :hearts, :diamonds, :clubs]
ROYAL = 10
COMPUTER = "Dealer"
YOU = "Player"
MAX = 21
DEALER_MAX = 17
def prompt(string)
  puts "==> " + string
end

def aces_value(player_hand)
  ace = if player_hand == []
          11
        elsif player_hand.sum + 11 > MAX
          1
        else
          11
        end
  ace
end

def display_hand_filler(spent_cards, player, player_cards, dealer_cards)
  if player == YOU
    player_cards << spent_cards.last
  elsif player == COMPUTER
    dealer_cards << spent_cards.last
  end
end

def draw_card(spent_cards, player_hand)
  draw = nil
  loop do
    draw = DECK[SUIT.sample].sample
    break if spent_cards.count(draw) <= 4
  end
  spent_cards << draw
  draw == "Ace" ? draw = aces_value(player_hand) : draw
  if draw.class == String && draw != "Ace"
    draw = ROYAL
  else
    draw
  end
  draw
end

def bust(total)
  total > MAX
end

def hand_format(player_cards)
  size = player_cards.size - 1
  print_hand = player_cards.map(&:to_s)
  if print_hand.size == 2
    print_hand.join(" and ")
  else
    print_hand[0, size].join(', ').to_s + " and " "#{print_hand[-1]}"
  end
end

def display_cards(player_hand, player, dealer_hand)
  prompt "#{player} Hand: #{hand_format(player_hand)}"
  puts " "
  if player == "Your"
    prompt "Dealer has a #{dealer_hand[0]}"
    puts " "
  end
end

def final_display_cards(player_cards, dealer_cards, player_hand, dealer_hand)
  prompt "Player Hand: #{hand_format(player_cards)}" \
         " for a total of #{player_hand.sum}"

  prompt "Dealer Hand: #{hand_format(dealer_cards)}" \
         " for a total of #{dealer_hand.sum}"
end

# rubocop:disable Metrics/PerceivedComplexity
def who_won?(player_hand, dealer_hand)
  if dealer_hand.sum > MAX
    YOU
  elsif player_hand.sum > MAX
    COMPUTER
  elsif (player_hand.sum > dealer_hand.sum) && player_hand.sum <= MAX
    YOU
  elsif (dealer_hand.sum > player_hand.sum) && dealer_hand.sum <= MAX
    COMPUTER
  end
end
# rubocop:enable Metrics/PerceivedComplexity

def score_card_update(player_hand, dealer_hand, score_card)
  if who_won?(player_hand, dealer_hand) == YOU
    score_card[:player_rounds_won] += 1
  elsif who_won?(player_hand, dealer_hand) == COMPUTER
    score_card[:dealer_rounds_won] += 1
  end
end

def win_message(player_hand, dealer_hand)
  if who_won?(player_hand, dealer_hand) == YOU
    prompt "You win this one!"
  elsif  who_won?(player_hand, dealer_hand) == COMPUTER
    prompt "Dealer Won this hand!"
  else
    prompt "This round is a tie"
  end
end

def end_sequence
  prompt "Another round? (Y or N)"
  again = gets.chomp
  again.downcase.start_with?('y')
end

def welcome
  puts ".----------------.  .----------------."
  puts "| .--------------. || .--------------. |"
  puts "| |    _____     | || |     __       | |"
  puts "| |   / ___ `.   | || |    /  |      | |"
  puts "| |  |_/___) |   | || |    `| |      | |"
  puts "| |   .'____.'   | || |     | |      | |"
  puts "| |  / /____     | || |    _| |_     | |"
  puts "| |  |_______|   | || |   |_____|    | |"
  puts "| |              | || |              | |"
  puts "| '--------------' || '--------------' |"
  puts "'----------------'  '----------------'"
end

def rules
  puts " "
  prompt "The goal of Twenty-One is to try to get as close to 21 as possible," \
         " without going over."
  prompt "If you go over 21, it's a 'bust' and you lose."
  prompt "Royal cards are worth 10"
  prompt "Ace worth 11 if it doesn't put you over 21, otherwise its worth 1"
  puts " "
  prompt '---------------------------------------------------------------------'
  puts " "
end

def valid_input?
  answer = nil
  loop do
    prompt "Hit or Stay"
    answer = gets.chomp
    break if answer.downcase == "hit" || answer.downcase == 'stay'
    prompt "Please enter hit or stay"
  end
  answer
end

player_cards = []
dealer_cards = []
player_hand = []
dealer_hand = []
spent_cards = []
round = true
score_card = { player_rounds_won: 0, dealer_rounds_won: 0 }

welcome
rules

loop do
  player_cards = []
  dealer_cards = []
  player_hand = []
  dealer_hand = []
  spent_cards = []
  round = true

  2.times do
    dealer_hand << draw_card(spent_cards, dealer_hand)
    display_hand_filler(spent_cards, COMPUTER, player_cards, dealer_cards)
  end

  2.times do
    player_hand << draw_card(spent_cards, player_hand)
    display_hand_filler(spent_cards, YOU, player_cards, dealer_cards)
  end

  display_cards(player_cards, "Your", dealer_hand)

  loop do
    answer = valid_input?
    if answer == 'stay'
      prompt "You stayed at #{player_hand.sum}"
      break
    end
    player_hand << draw_card(spent_cards, player_hand)
    display_hand_filler(spent_cards, YOU, player_cards, dealer_cards)
    display_cards(player_cards, 'Your', dealer_hand)
    if bust(player_hand.sum)
      prompt "Busted at #{player_hand.sum}"
      puts " "
      round = false
      break
    else
      next
    end
  end

  if round == true
    loop do
      break if dealer_hand.sum >= DEALER_MAX
      dealer_hand << draw_card(spent_cards, dealer_hand)
      display_hand_filler(spent_cards, COMPUTER, player_cards, dealer_cards)
      if bust(dealer_hand.sum)
        prompt "Dealer hit bust at #{dealer_hand.sum}"
        break
      elsif dealer_hand.sum > player_hand.sum
        break
      end
    end
  end
  prompt '------------------------------------------------'
  final_display_cards(player_cards, dealer_cards, player_hand, dealer_hand)
  win_message(player_hand, dealer_hand)
  prompt '------------------------------------------------'
  score_card_update(player_hand, dealer_hand, score_card)

  prompt "Player wins:#{score_card[:player_rounds_won]}"
  prompt "Dealer wins:#{score_card[:dealer_rounds_won]}"

  break unless end_sequence
  system 'clear'
end
prompt "Thanks for playing!"
