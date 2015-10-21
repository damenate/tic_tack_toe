
  puts "a1 | a2| a3"
  puts "___________"
  puts "b1 | b2| b3"
  puts "___________"
  puts "c1 | c2| c3"
      print "\n"

puts "Enter a position!"
spot = gets.chomp
positions = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

if positions.include?(spot)
  puts "Awesome!"
else
  puts "Enter a available position please!"
end

def display_board
  array = [[" ", " ", " "],

 ]]



 winning_combos = [
   # Horizontal wins:
   ["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"],
   # Vertical wins:
   ["a1", "b1", "c1"], ["a2", "b2", "c2"], ["a3", "b3", "c3"],
   # Diagonal wins:
   ["a1", "b2", "c3"], ["a3", "b2", "c1"]]
