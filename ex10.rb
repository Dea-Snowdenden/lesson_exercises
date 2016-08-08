def add(a,b)
  result = a + b
  puts "The result is: #{result}"
end

def subtract(a,b)
  result = a - b
  puts "The result is: #{result}"
end

def multiply(a,b)
  result = a * b
  puts "The result is: #{result}"
end

def divide(a,b)
  result = a / b
  puts "The result is: #{result}"
end

puts "Welcome to RubyCalc"
print "Enter first number: "
a = gets.chomp.to_i
print "Enter operation (+, -, *, /): "
symbol = gets.chomp
print "Enter second number: "
b = gets.chomp.to_i

if symbol == "+"
  add(a,b)
elsif symbol == "-"
  subtract(a,b)
elsif symbol == "*"
  multiply(a,b)
elsif symbol == "/"
  divide(a,b)
else
  puts "you doing it wrong"
end
