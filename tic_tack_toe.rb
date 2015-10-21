
  puts "a1 | a2| a3"
  puts "___________"
  puts "b1 | b2| b3"
  puts "___________"
  puts "c1 | c2| c3"
      print "\n"

puts "Enter a position!"
position = gets.chomp.to_s

if position.include?(["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"].to_s)
  puts "Awesome!"
else
  puts "Enter a available position please!"
end
