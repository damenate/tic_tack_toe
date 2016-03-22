class Position

  attr_reader :board

  def initialize
    #board to get position board working
    #REMEMBER: this is a different board than the board's board
    @board =  [[" ", " ", " "],
              [" ", " ", " "],
              [" ", " ", " "]]
    # @positions = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
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

  def update_board(input, move)
    @board[row_of(input)][col_of(input)] = move
  end

  # def occupied?(input)
  #   row_of(@positions.input).empty? || col_of(@positions.input).length != 2
  # end

  def row_of(input)
    hash = { "a" => 0, "b" => 1, "c" => 2 }
    hash[input[0]]
  end

  def col_of(input)
    input[1].to_i - 1
  end

  def winning_ways
    winning_combos = [
      # Horizontal
      [[0,0], [0,1], [0,2]], [[1,0], [1,1], [1, 2]], [[2,0], [2,1], [2,2]],
      # Vertical
      [[0,0], [1,0], [2,0]], [[0,1], [1,1], [2,1]], [[0,2], [1,2], [2,2]],
      # Diagonal
      [[0,0], [1,1], [2,2]], [[0,2], [1,1], [2,0]]
      ]
    winning_combos.each do |combo|
      return "X has won!" if combo.all? {|c| @board[c[0]][c[1]] == "X"}
      return "O has won!" if combo.all? {|c| @board[c[0]][c[1]] == "O"}
    end
    return "No Winners Yet."
  end
end
