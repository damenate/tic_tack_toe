require './board'
require './position'
require './game'

spots = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

@position = Position.new
@board = Board.new
@game = Game.new(p1 = "", p2 = "")

@current_player = p1
move = "X"

@board.print_directions
@board.print_board

computer_name = "Dummy Computer"

puts "Lets Play a Game!"
puts "How many players will there be, 1 or 2?"
num_players = gets.chomp

if num_players == "2"
  puts "Player 1, enter you name:"
  p1 = gets.chomp
  puts "Player 2, enter you name:"
  p2 = gets.chomp
end
  while @position.board.any? { |r| r.include?(" ") }
    puts "#{@current_player} Enter a position!"
    input = gets.chomp
    @position.update_board(input, move)
    @position.print_board
    if @current_player == p1
      @current_player = p2
      move = "O"
    else
      @current_player = p1
      move = "X"
    end
    puts @position.winning_ways
    break if @position.winning_ways == "X has won!" || @position.winning_ways == "O has won!"
  end
  puts "Game Over"

if num_players == "1"
  puts "Enter your name"
  play1 = gets.chomp
  puts "Dummy Computer awaits"
  while @position.board.any? { |r| r.include?(" ") }
  puts "#{@current_player} Enter a position!"
  input = gets.chomp
  @position.update_board(input, move)
  @position.print_board
  if @current_player == p1
    @current_player = computer_name
    move = "O"
  else
    @current_player = p1
    move = "X"
  end
  puts @position.winning_ways
  break if @position.winning_ways == "X has won!" || @position.winning_ways == "O has won!"
end
  puts "Game Over"
end
# while @position.board.any? { |r| r.include?(" ") }
#   input1 = gets.chomp
#   if input1.empty? || input1.length != 2
#     puts " Spots take, try again."
#     redo
#   end
# end
