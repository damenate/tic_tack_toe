
@board =  [[" ", " ", " "],
          [" ", " ", " "],
          [" ", " ", " "]]

def print_directions
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

def update_board(input)
  @board[x_of(input)][y_of(input)] = "X"
end

def x_of(input)
  hash = { "a" => 0, "b" => 1, "c" => 2 }
  hash[input[0]]
end

def y_of(input)
  input[1].to_i - 1
end

print_directions
print_board

while @board.any? { |r| r.include?(" ") }
  puts "Enter a position!"
  update_board(gets.chomp)
  print_board
end
puts "Game Over"
