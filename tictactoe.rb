# TIC TAC TOE GAME
# 16/08/2016
# TRISTAN SOUTHWELL
class Game
  def initialize

  end

  def play
    while winning_positions != true
      puts "player1 please make a move"
      move1 = gets.chomp
### store field number in array variable
      x_moves_made << move1
### check winning positions does not equal arrays
### if it does goes to win, if not it goes to player2
        if x_moves_made == winning_positions
            puts "PLAYER 1 WINS!!!"
        else
            puts "player 2 make a move"
        end
      move2 = gets.chomp
### store number in array vairable
      o_moves_made << move2
### check winning positions does not equal array
### if it does, go to win, if not player 2 goes
      if o_moves_made == winning_positions
        puts "PLAYER 2 WINS!!!"
      else
        puts "player 1 make a move"
      end
  end

x_moves_made = []
o_moves_made = []

end



class Board < Game
  def initialize

  end

  winning_positions = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  possible_moves = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ", "6" => " ", "7" => " ", "8" => " ", "9" => " "}

  map = [{1 => 1, 2 => 2, 3 => 3}, {4 => 4, 5 => 5, 6 => 6}, {7 => 7, 8 => 8, 9 => 9}]

  def display_position
    map.each do |array|
      array.each do |element|
        puts element

  end

end

class Player
  def initialize(name)
    @name = name
  end

end

player1 = Player.new("Trit")
player2 = Player.new("South")

puts "Make your move by entering your chosen squares number"
