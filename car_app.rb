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
        fuel = fuel + 500
      else
#puts the amount of fuel to terminal
        puts "Fuel #{fuel}"
      end
# Overwrites .txt file with updated figure
      contents = File.open("fuel.txt", "w")
      contents.puts fuel
    end


    # def refill
    #   bank.Bank_account.new(fuel_purchased)
    #   if @fuel < 10
    #     bank.fuel_purchased + @fuel
    #   elsif @fuel > 10
    #     puts "keep driving"
    #   end
    # end

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


puts user.car.fuel_use(23)
