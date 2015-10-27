require './board'
require './position'
require './game'

puts "Player 1, enter you name:"
p1 = gets.chomp
puts "Player 2, enter you name:"
p2 = gets.chomp

@position = Position.new
@board = Board.new
@game = Game.new(p1, p2)

@current_player = p1

@board.print_directions
@board.print_board

move = "X"


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
