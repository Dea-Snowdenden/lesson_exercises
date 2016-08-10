class Car
  def initialize(make, age, top_speed, gas_tank_size, mileage)
    @make = make
    @age = age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
    @mileage = mileage
  end
  attr_accessor :make, :age, :top_speed, :gas_tank_size, :mileage



    def fuel_use(kms)
# opens .txt file
      file = File.open("fuel.txt", "r")
      contents = file.read
# sets the variable fuel to the value stored in the .txt file
      fuel = contents.to_i
# calculates fuel used
      fuel = fuel - (kms * @mileage)
# if statement to decide if it needs to be filled up or not

      if fuel < 50
        file1 = File.open("account.txt", "r")
        contents = file1.read
        bank_balance = contents.to_i
               puts "How much fuel would you like to purchase?"
              fuel_to_purchase = gets.chomp.to_i
              if bank_balance > fuel_to_purchase
                 fuel_purchased = fuel_to_purchase
              else
                puts "Insufficient Funds"
              end
                 end_bank = bank_balance - fuel_purchased

              file1 = File.open("account.txt", "w")
              file1.puts end_bank


          fuel = fuel + fuel_purchased
        puts "Refill with #{fuel_purchased} units of fuel\nFuel units = #{fuel}"
      else
#puts the amount of fuel to terminal
        puts "Fuel units = #{fuel}"
      end
# Overwrites .txt file with updated figure
      contents = File.open("fuel.txt", "w")
      contents.puts fuel
    end

end

  class Driver
    def initialize(name, car, age, contact)
      @name = name
      @car = car
      @age = age
      @contact = contact
    end

    attr_accessor :name, :car, :age, :contact

  end

  user = Driver.new("Pete", Car.new("Broom", "1902", 100, 45, 2), 12, "mum")
  distance_driven = 20

  #puts "#{user.name} drives a #{user.car.age} #{user.car.make}"
system "clear"
puts "How far do you want to drive?"
kms = gets.chomp.to_i
system "clear"

puts user.car.fuel_use(kms)
