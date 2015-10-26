require './board'
require './position'

new_board = [[" ", " ", " "],
            [" ", " ", " "],
            [" ", " ", " "]]

winning_combos = [
  # Horizontal:
  ["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"],
  # Vertical:
  ["a1", "b1", "c1"], ["a2", "b2", "c2"], ["a3", "b3", "c3"],
  # Diagonal:
  ["a1", "b2", "c3"], ["a3", "b2", "c1"]]

@position = Position.new
@board = Board.new

@board.print_directions
@board.print_board
# 
# @position.board_spot
# @position.update_board
# @position.occupied?


while new_board.any? { |r| r.include?(" ") }
  puts "Enter a position!"
  input = gets.chomp
  if @board.occupied?(input)
    puts "Please pick an unoccupied spot."
  else
    update_board(input)
    print_board
  end
  puts "Game Over"
end
