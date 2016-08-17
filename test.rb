@map = [{1 => "1", 2 => "2", 3 => "3"}, {4 => "4", 5 => "5", 6 => "6"}, {7 => "7", 8 => "8", 9 => "9"}]


def display_position
  @map.each do |array|
    array.each_value do |element|
      print element
    end
    print "\n"
  end
end

def update_position

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
    display position
  end

winning_positions = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
x_moves_made = []
o_moves_made = []
winner = []



display_position
puts "Player 1.  Make a move"
move1 = gets.chomp.to_i
#puts "Player 2.  Make a move"
