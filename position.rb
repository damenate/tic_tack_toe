class Position


  def initialize
    @board =  [[" ", " ", " "],
              [" ", " ", " "],
              [" ", " ", " "]]
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

  def update_board(input)
    @board[row_of(input)][col_of(input)] = "X"
  end

  def row_of(input)
    hash = { "a" => 0, "b" => 1, "c" => 2 }
    hash[input[0]]
  end

  def col_of(input)
    input[1].to_i - 1
  end

  def board_spot
    while @board.any? { |r| r.include?(" ") }
      puts "Enter a position!"
      update_board(gets.chomp)
      print_board
    end
    puts "Game Over"
  end



end
