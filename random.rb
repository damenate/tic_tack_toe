
puts "Enter a position!"
spot = gets.chomp
positions = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

if positions.include?(spot)
  puts "Awesome!"
else
  puts "Enter a available position please!"
end


 winning_combos = [
   # Horizontal wins:
   [[0,0], [0,1], [0,2]], [[1,0], [1,1], [1, 2]], [[2,0], [2,1], [2,2]],
   # Vertical wins:
   [[0,0], [1,0], [2,0]], [[0,1], [1,1], [2,1]], [[0,2], [1,2], [2,2]],
   # Diagonal wins:
   [[0,0], [1,1], [2,2]], [[0,2], [1,1], [2,0]]]

   winning_combos.each do |combo|
     return "X has won!" if combo.all? {|c| @board[c[0]][c[1]] == "X"}
     return "O has won!" if combo.all? {|c| @board[c[0]][c[1]] == "O"}
   end
   return "You are all losers."


   def occupied?(input)
     row_of(input).empty? || col_of(input).length != 2
   end


   input = gets.chomp
   if @board.occupied?
     puts "Please pick an unoccupied spot."
