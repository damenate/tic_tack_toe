class Game

  attr_reader :player1, :player2

  def initialize
    @player1 = player1
    @player2 = player2
  end

  def start_game
    puts "Let's Play a Game."
    puts "Player1 enter your name:"
    name1 = gets.chomp
    @player1 = HumanPlayer.new(name1)
    puts "Player 2, please enter your name."
    name2 = gets.chomp
    @player2 = HumanPlayer.new(name2)
  end
end
