puts "What file do you want to read?"
filename = gets.chomp
txt = open(filename, 'a+')

puts "The file you opened was #{filename}"
puts "=" * 15
puts txt.read

puts "=" * 15
puts "Which city would you like to add?"
city = gets.chomp

txt.write(city)
txt.write ("\n")
txt.rewind
puts "=" * 15

print txt.read
txt.close
