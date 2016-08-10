puts "Which file do you want to read?"
filename = gets.chomp

txt = File.open(filename)

puts "You opened #{filename}"
puts "=" * 15
print txt.read
