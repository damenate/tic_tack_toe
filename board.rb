require 'byebug'
class Board

  attr_reader :places, :board

  def initialize
    @board = [
      [" ", " ", " "],
      [" ", " ", " "],
      [" ", " ", " "]
    ]
  end

  def print_directions
    puts ""
    puts "Pick a spot on the board!"
    puts ""
    puts "a1 | a2| a3"
    puts "___________"
    puts "b1 | b2| b3"
    puts "___________"
    puts "c1 | c2| c3"
         print "\n"
  end

  def print_board
    (0..2).each do |r|
      print " "
      (0..2).each do |c|
        print @board[r][c]
        print " | " unless c == 2
      end
      print "\n"
      print " ---------\n" unless r == 2
    end
    print "\n"
  end


  # def occupied?(input)
  #   @board[row_of(input)][col_of(input)] == "X"
  # end
end
