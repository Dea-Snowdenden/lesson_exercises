# TIC TAC TOE GAME
# 16/08/2016
# TRISTAN SOUTHWELL
class Game
  def initialize

  end

  def play
    while winning_positions != true
      "player1 please make a moooove"
      gets.chomp = move1
### array slice
### check winning positions
    if winning_positions == true
      "PLAYER 1 WINS!!!"
    else
      "player 2 make. a. mooove"
    end
    gets.chomp = move2
### array slice
### check winning positions
    if winning_positions == true
      "PLAYER 2 WINS!!!"
    else
###send to top
    end
end



class Board < Game
  def initialize

  end

  winning_positions = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  possible_moves = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ", "6" => " ", "7" => " ", "8" => " ", "9" => " "}

  def display_position
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
  end

end

class Player
  def initialize(name)
    @name = name
  end

end

player1 = Player1.new("Trit")
player2 = Player2.new("South")

puts "Make your move by entering your chosen squares number"
