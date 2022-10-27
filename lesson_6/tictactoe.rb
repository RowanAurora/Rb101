WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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
  puts "You're an #{PLAYER_MARKER}, #{player} is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, thats not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def player_2_places_piece(brd)
  square = ''
  loop do
    prompt "choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
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
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
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
  elsif brd[5] == INITIAL_MARKER
    5
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

def game_type(answer, player2)
  if answer == '1'
    player2 << 'Computer'
  elsif answer == '2'
    player2 << 'Player_2'
  end
end

computer_wins = 0
player_wins = 0
player_2_wins = 0
current_player = 'Player'
answer = 0
player2 = ''
player_match_wins = 0
computer_match_wins = 0
player_2_match_wins = 0

loop do
  prompt 'PC(1) or 2 player(2)'
  answer = gets.chomp
  game_type(answer, player2)
  break if answer == '1' || answer == '2'
  prompt "Choose a game type"
end

loop do
  board = initialize_board
  display_board(board, player2)

  if answer == '1'
    loop do
      display_board(board, player2)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board, player2) || board_full?(board)
    end
  elsif answer == '2'
    loop do
      display_board(board, player2)
      place_piece_2!(board, current_player)
      current_player = alternate_player_2(current_player)
      break if someone_won?(board, player2) || board_full?(board)
    end
  end

  if someone_won?(board, player2)
    prompt "#{detect_winner(board, player2)} won"
  elsif board_full?(board)
    prompt "It's a tie!"
  end

  if detect_winner(board, player2) == "Player"
    player_wins += 1
  elsif detect_winner(board, player2) == "Computer"
    computer_wins += 1
  elsif detect_winner(board, player2) == "Player_2"
    player_2_wins += 1
  end

  if player_wins == 3
    prompt "You're the grand winner!"
    player_match_wins += 1
    player_wins = 0
    computer_wins = 0
    player_2_wins = 0
  elsif computer_wins == 3
    prompt "Child, that computer smashed you."
    computer_match_wins += 1
    player_wins = 0
    computer_wins = 0
    player_2_wins = 0
  elsif player_2_wins == 3
    prompt "Player 2 wins Big!"
    player_2_match_wins += 1
    player_wins = 0
    computer_wins = 0
    player_2_wins = 0
  end

  prompt "Player wins:#{player_wins}"
  if player2 == 'Computer'
    prompt "Computer wins: #{computer_wins}"
  else
    prompt "Player 2 wins: #{player_2_wins}"
  end

  if player_2_match_wins > 0 || computer_match_wins > 0 || player_match_wins > 0
    prompt "Player Match wins: #{player_match_wins}"
    if player2 == 'Computer'
      prompt "Computer match wins: #{computer_match_wins}"
    else
      prompt "Player 2 match wins: #{player_2_match_wins}"
    end
  end

  prompt "Play again? (y or n)"
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end
prompt "Thanks for playing TicTacToe. BYE!"
