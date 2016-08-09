class Car
  def initialize(make, age, top_speed, gas_tank_size)
    @make = make
    @age = age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
  end
  attr_accessor :make, :age, :top_speed, :gas_tank_size

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

  user = Driver.new("Pete", Car.new("Broom", 1902, 100, 45), 12, "mum")

  puts "#{user.name} drives a #{user.car.age} #{user.car.make}"
