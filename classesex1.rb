class Celcius

def initialize(temperature)
  @temperature = temperature
end

def convert
  convert = @temperature * 1.8 + 32
end

end

monday = Celcius.new(16)


puts monday.convert
