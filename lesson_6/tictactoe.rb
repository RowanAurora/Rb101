require 'pry'

WINNING_LINES = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']] +
                [['1', '4', '7'], ['2', '5', '8'], ['3', '6', '9']] +
                [['1', '5', '9'], ['3', '5', '7']]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_NUMBER = 3
SECOND_PLAYER = 'Player_2'
VALID_MOVES = %w(1 2 3 4 5 6 7 8 9)

def prompt(msg)
  puts "===> #{msg}"
end

def joinor(arr, punctuation=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    string = arr.insert(-2, word).join(punctuation)
    string[-3] = ''
    string
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player)
  system 'clear'
  puts "You're #{PLAYER_MARKER}, #{player} is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd['1']}  |  #{brd['2']}  |  #{brd['3']}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd['4']}  |  #{brd['5']}  |  #{brd['6']}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd['7']}  |  #{brd['8']}  |  #{brd['9']}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  ('1'..'9').each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    break if empty_squares(brd).include?(square) && VALID_MOVES.include?(square)
    prompt "Sorry, thats not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def player_2_places_piece(brd)
  square = ''
  loop do
    prompt "choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    break if empty_squares(brd).include?(square) && VALID_MOVES.include?(square)
    prompt "Sorry, thats not a valid choice."
  end
  brd[square] = COMPUTER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = computer_strategy(line, brd)
    break if square
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, player)
  !!detect_winner(brd, player)
end

def detect_winner(brd, player)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == WIN_NUMBER
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == WIN_NUMBER
      return player.to_s
    end
  end
  nil
end

# rubocop:disable Metrics/CyclomaticComplexity, Style/EmptyElse
def computer_strategy(line, brd)
  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  elsif brd.values_at(*line).count(PLAYER_MARKER) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  elsif brd['5'] == INITIAL_MARKER
    '5'
  else
    nil
  end
end
# rubocop:enable Metrics/CyclomaticComplexity, Style/EmptyElse

def alternate_player(current_player)
  current_player == 'Player' ? "Computer" : "Player"
end

def alternate_player_2(current_player)
  current_player == 'Player' ? "Player_2" : "Player"
end

def place_piece!(board, current_player)
  if current_player == "Player"
    player_places_piece(board)
  else
    computer_places_piece!(board)
  end
end

def place_piece_2!(board, current_player)
  if current_player == "Player"
    player_places_piece(board)
  else
    player_2_places_piece(board)
  end
end

def game_type(answer)
  if answer == '1'
    type = 'Computer'
  elsif answer == '2'
    type = 'Player_2'
  end
  type
end

def player_two_type
  player2 = ''
  loop do
    prompt 'PC(1) or 2 player(2)'
    prompt 'Type 1 to face computer. Type 2 to play against a friend.'
    answer = gets.chomp
    player2 = game_type(answer)
    break if answer == '1' || answer == '2'
    prompt "Error - Choose a game type by typing 1 or 2"
  end
  player2
end

def score_wipe(score_card)
  score_card[:scores][:player_wins] = 0
  score_card[:scores][:computer_wins] = 0
  score_card[:scores][:player_2_wins] = 0
end

def game_score_update(score_card, player2, board)
  if detect_winner(board, player2) == "Player"
    score_card[:scores][:player_wins] += 1
  elsif detect_winner(board, player2) == "Computer"
    score_card[:scores][:computer_wins] += 1
  elsif detect_winner(board, player2) == "Player_2"
    score_card[:scores][:player2_wins] += 1
  end
end

def update_score_card(score_card)
  if score_card[:scores][:player_wins] == WIN_NUMBER
    prompt "You're the grand winner!"
    score_card[:match_score][:player_match_wins] += 1
  elsif score_card[:scores][:computer_wins] == WIN_NUMBER
    prompt "Child, that computer smashed you."
    score_card[:match_score][:computer_match_wins] += 1
  elsif score_card[:scores][:player_2_wins] == WIN_NUMBER
    prompt "Player 2 wins Big!"
    score_card[:match_score][:player_2_match_wins] += 1
  end
end

def game_win(score_card, player2)
  prompt "Player wins:#{score_card[:scores][:player_wins]}"
  if player2 == 'Computer'
    prompt "Computer wins:#{score_card[:scores][:computer_wins]}"
  else
    prompt "Player 2 wins:#{score_card[:scores][:player2_wins]}"
  end
end

# rubocop:disable Metrics/AbcSize
def match_wins(score_card, player2)
  if score_card[:match_score].any? { |_, v| v > 0 }
    prompt "Player Match wins:" +
           score_card[:match_score][:player_match_wins].to_s
    score_wipe(score_card)
    if player2 == 'Computer'
      prompt "Computer Match wins:" +
             score_card[:match_score][:computer_match_wins].to_s
    else
      prompt "Player 2 Match wins:" +
             score_card[:match_score][:player_2_match_wins].to_s
    end
  end
end
# rubocop:enable Metrics/AbcSize

def opening_display
  puts " _   _        _               _"
  puts "| | (_)      | |             | |"
  puts "| |_ _  ___  | |_ __ _  ___  | |_ ___   ___"
  puts "| __| |/ __| | __/ _  |/ __| | __/ _ \\ / _ \\ "
  puts "| | | | (__  | || (_| | (__  | || (_) |  __/"
  puts "|_| |_|\\___| |_| \\__,_|\\___| |_| \\___/ \\___| "
  prompt "Get Three of Your marker in a line before your opponent to win!"
  prompt "First to 3 wins a match!"
end

def opening_board_display
  puts ""
  puts "     |     |"
  puts "  1  |  2  |  3"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  4  |  5  |  6"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  7  |  8  |  9"
  puts "     |     |"
  puts ""
end

current_player = 'Player'
score_card = { scores:
                { player_wins: 0, computer_wins: 0, player2_wins: 0 },
               match_score:
                { player_match_wins: 0, computer_match_wins: 0,
                  player_2_match_wins: 0 } }

opening_display
opening_board_display
player2 = player_two_type

loop do
  board = initialize_board
  display_board(board, player2)

  if player2 == 'Computer'
    loop do
      display_board(board, player2)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      display_board(board, player2)
      break if someone_won?(board, player2) || board_full?(board)
    end
  elsif player2 == 'Player_2'
    loop do
      display_board(board, player2)
      place_piece_2!(board, current_player)
      current_player = alternate_player_2(current_player)
      display_board(board, player2)
      break if someone_won?(board, player2) || board_full?(board)
    end
  end

  if someone_won?(board, player2)
    prompt "#{detect_winner(board, player2)} won"
  elsif board_full?(board)
    prompt "It's a tie!"
  end

  game_score_update(score_card, player2, board)

  game_win(score_card, player2)

  update_score_card(score_card)

  match_wins(score_card, player2)

  prompt "Play again? (y or n)"
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end
prompt "Thanks for playing TicTacToe. BYE!"
