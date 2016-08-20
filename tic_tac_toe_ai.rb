@map = [{1 => "1", 2 => "2", 3 => "3"}, {4 => "4", 5 => "5", 6 => "6"}, {7 => "7", 8 => "8", 9 => "9"}]

def display_position
  @map.each do |array|
    array.each_value do |element|
      print element
    end
    print "\n"
  end
end

def turnO(input)
  @map.each do |array|
    if array.include?(input)
      array[input] = "O"
    end
  end
  display_position
end

def turnX(input)
  @map.each do |array|
    if array.include?(input)
      array[input] = "X"
    end
  end
  display_position
end

def ai_move
  generate random number(exclude numbers already in o_moves_made)

winning_positions = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
x_moves_made = []
o_moves_made = []
winner = []

while winner != [true]
    puts "Player 1.  Make a move"
    display_position
    move1 = gets.chomp.to_i
    turnO(move1)
    o_moves_made << move1
      if winning_positions.any? { |sub_array| sub_array.all? { |item| o_moves_made.include? item } } == true
        puts "Player 1 WINS!!!!!!"
        winner << true
      else
        system "clear"
        puts "Player 2.  Make a move"
        display_position
      end
    move2 = gets.chomp.to_i
    turnX(move2)
    x_moves_made << move2
      if winning_positions.any? { |sub_array| sub_array.all? { |item| x_moves_made.include? item } } == true
        puts "Player 2 WINS!!!!"
        winner << true
      else
        system "clear"
      end
end
