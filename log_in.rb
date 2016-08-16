def log_in
  puts "Welcome to tradiemate.\nPlease enter your username and password"
  puts "Username:"
  @name = gets.chomp
  puts "Password:"
  @password = gets.chomp
  system "clear"
  comparelogin(@name, @password)
end

def comparelogin(name, password)
  User.all.each do |find|
    if find.name == name
      if find.password == password
        if find.class == Employee
          find.employee_menu
        elsif find.class == Client
          find.client_menu
        else
          puts "You are not in our system"
        end
      else
          puts "Wrong Password, Go Back"
      end
    end
  end
end
