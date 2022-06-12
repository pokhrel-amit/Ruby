# Class TicTacToe
class TicTacToe
  # Initializing an array with 9 empty values
  def initialize
    @board = Array.new(9, '')
  end

  # Displays the Game board positions at current point of time
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ----------- '

    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ----------- '

    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # A list for possible winning combinations
  $possible_winning_list = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ]

  # Converts the given input index by user to an array index formate
  def input_to_index(input)
    input.to_i - 1
  end

  # Places the move made by the player on the Game board
  def place_coordinate(position, player)
    @board[position] = player
  end

  # Checks where the Game board is empty or not
  def is_empty?(input)
    @board[input] == 'X' || @board[input] == 'O'
  end

  # Checks whether the move made by the player is valid or not
  def is_move_valid?(input)
    input.between?(0, 8) && !is_empty?(input)
  end

  # gives the turn to the current player and gets input from them
  def my_turn
    puts "\n PLAYER -#{current_player}, Please Choose your digit\n"
    coordinate = gets
    puts "\n"
    coordinate = input_to_index(coordinate)
    if is_move_valid?(coordinate)
      place_coordinate(coordinate, current_player)
    else
      my_turn
    end
    puts "\n"
    display_board
  end

  # game play of tic-tac-toe
  def play
    my_turn until is_game_over?

    if won?
      winner = winner()
      puts "\n"
      puts "Congrates player - #{winner} !"
      puts "You won the game. Bravo !!\n"
    elsif is_draw?
      puts "\n None of you has won the game. Thanks your for time!"
    end
  end

  # Counts the number of moves made by the players and returns the count
  def count_turn
    count = 0
    @board.each do |i|
      count += 1 if %w[X O].include?(i)
    end
    count
  end

  # Gives the current player at the point of play
  def current_player
    if count_turn.even?
      'X'
    else
      'O'
    end
  end

  # checks whether board array matches the defined combo winning list or not
  def won?
    $possible_winning_list.detect do |list|
      @board[list[0]] == @board[list[1]] &&
        @board[list[1]] == @board[list[2]] &&
        is_empty?(list[0])
    end
  end

  # checks whether the Game board is full or not
  def is_full?
    count_turn == 9
  end

  # Checks whether the games is draw or not
  def is_draw?
    if !won? && is_full?
      true
    else
      false
    end
  end

  # Checks if game if over or not
  def is_game_over?
    if won? || is_full? || is_draw?
      true
    else
      false
    end
  end

  # gives the winner
  def winner
    winner = won?
    if winner
      won = @board[winner.first]
    end
  end
end

lets_play = TicTacToe.new
puts "WELCOME TO TIC-TAC-TOE GAME PLAY!\n"
puts 'Please Enter the  digits from (1-9) !'
puts "\n"
puts ' 1 | 2 | 3 '
puts ' ----------- '
puts ' 4 | 5 | 6 '
puts ' ----------- '
puts ' 7 | 8 | 9 '

lets_play.play
