class Person

  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name(name)
    @name = name
  end

end

puts "Whats your name?"

user_name = gets.chomp

john = Person.new("John")
name = john.set_name(user_name)

puts "The name of the person is #{name}"
