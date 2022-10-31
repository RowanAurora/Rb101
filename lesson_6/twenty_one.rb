require 'pry'
DECK = {
  hearts: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  diamonds: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  clubs: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace'],
  spades: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', "Queen", 'King', 'Ace']
}
SUIT = [:spades, :hearts, :diamonds, :clubs]
ROYAL = 10

def prompt(string)
  puts "==> " + string
end

def aces_value(player_hand)
  ace = if player_hand == []
          11
        elsif player_hand.sum + 11 > 21
          1
        else
          11
        end
  ace
end

def display_hand_filler(spent_cards, player, player_cards, dealer_cards)
  if player == "Player"
    player_cards << spent_cards.last
  elsif player == "Dealer"
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
  total > 21
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

def final_display_cards(player_cards, dealer_cards)
  prompt "Player Hand: #{hand_format(player_cards)}"
  prompt "Dealer Hand: #{hand_format(dealer_cards)}"
end

# rubocop:disable Metrics/PerceivedComplexity
def who_won?(player_hand, dealer_hand)
  if dealer_hand.sum > 21
    "Player"
  elsif player_hand.sum > 21
    "Dealer"
  elsif (player_hand.sum > dealer_hand.sum) && player_hand.sum <= 21
    "Player"
  elsif (dealer_hand.sum > player_hand.sum) && dealer_hand.sum <= 21
    "Dealer"
  end
end
# rubocop:enable Metrics/PerceivedComplexity

def score_card_update(player_hand, dealer_hand, score_card)
  if who_won?(player_hand, dealer_hand) == "Player"
    score_card[:player_rounds_won] += 1
  elsif who_won?(player_hand, dealer_hand) == "Dealer"
    score_card[:dealer_rounds_won] += 1
  end
end

def win_message(player_hand, dealer_hand)
  if who_won?(player_hand, dealer_hand) == "Player"
    prompt "You win this one!"
  elsif  who_won?(player_hand, dealer_hand) == "Dealer"
    prompt "Dealer Won this hand!"
  else
    prompt "This round is a tie"
  end
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
  prompt "The goal of Twenty-One is to try to get as close to 21 as possible," \
         " without going over."
  prompt "If you go over 21, it's a 'bust' and you lose."
  prompt "Royal cards are worth 10"
  prompt "Ace worth 11 if it doesn't put you over 21, otherwise its worth 1"
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

  dealer_hand << draw_card(spent_cards, dealer_hand)
  display_hand_filler(spent_cards, "Dealer", player_cards, dealer_cards)

  dealer_hand << draw_card(spent_cards, dealer_hand)
  display_hand_filler(spent_cards, "Dealer", player_cards, dealer_cards)

  player_hand << draw_card(spent_cards, player_hand)
  display_hand_filler(spent_cards, "Player", player_cards, dealer_cards)

  player_hand << draw_card(spent_cards, player_hand)
  display_hand_filler(spent_cards, "Player", player_cards, dealer_cards)

  display_cards(player_cards, "Your", dealer_hand)

  loop do
    answer = valid_input?
    break if answer == 'stay'
    player_hand << draw_card(spent_cards, player_hand)
    display_hand_filler(spent_cards, "Player", player_cards, dealer_cards)
    display_cards(player_cards, 'Your', dealer_hand)
    if bust(player_hand.sum)
      prompt "Bust!"
      puts " "
      round = false
      break
    else
      next
    end
  end

  if round == true
    loop do
      break if dealer_hand.sum > 17
      dealer_hand << draw_card(spent_cards, dealer_hand)
      display_hand_filler(spent_cards, "Dealer", player_cards, dealer_cards)
      if bust(dealer_hand.sum)
        break
      elsif dealer_hand.sum > player_hand.sum
        break
      end
    end
  end

  final_display_cards(player_cards, dealer_cards)
  win_message(player_hand, dealer_hand)

  score_card_update(player_hand, dealer_hand, score_card)
  prompt "Player wins:#{score_card[:player_rounds_won]}"
  prompt "Dealer wins:#{score_card[:dealer_rounds_won]}"
  prompt "Another round? (Y or N)"
  again = gets.chomp
  system 'clear'
  break unless again.downcase.start_with?('y')
  "Thanks for playing!"
end
