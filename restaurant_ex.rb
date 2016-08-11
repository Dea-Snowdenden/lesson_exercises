class Restaurant
  def initialize(food)
    @food = food
end
  attr_accessor :food

end

class Customer
  def initialize(name)
    @name = name
  end

  attr_accessor :name


end


class Food
    def initialize(name, price)
      @name = name
      @price = price
    end
    attr_accessor :name, :price
end

def menu(resturant)
  resturant.food.each_with_index do |food, i|
    puts "#{i} || #{food.name}"
  end

  selection = gets.chomp.to_i

  puts "your food will cost #{resturant.food[selection].price}"
end

#
# system "clear"
# puts "what name"
# name = gets.chomp
#
# food = Customer.new(name)

resturant = Restaurant.new([Food.new("Bacon", 1), Food.new("Bacon and eggs", 5)])
resturant.food

# puts "enter your food"
# resturant.food = resturant.food << Food.new("Bacon & Bacon", 4)
menu(resturant)
