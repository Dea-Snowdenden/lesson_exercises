class User
  def initialize(name, password,email, address, phone)
    @name = name
    @email = email
    @address = address
    @phone = phone
  end
  attr_accessor :name,:password, :email, :address, :phone


    def log_in
      puts "Welcome to tradiemate.\nPlease enter your username and password"
      puts "Username:"
      @username = gets.chomp
      puts "Password:"
      @password = gets.chomp

    end

    def self.all
      ObjectSpace.each_object(self).to_a
    end

    def comparelogin
      User.all.each do |find|
        if find.name == @username
          if find.password == @password
            if find.class == Employee.class
              #send to employee menu
            elsif find.class == Client.class
              #send to client menu
            else
              puts "You are not in our system"
            end
          else
              puts "Wrong Password, Go Back"
          end
        else
          puts "Your name is not in our system"
        end
      end
    end


# menu to access methods below
#eg add job, update job, view jobs, client log in

end

class Employee < User
  def initialize
    super(name, email, address, phone)
  end

  def employee_menu

  end

  def add_job()
    puts "Please enter job name"
    @job_name = gets.chomp
    puts "Please enter job location"
    @location = gets.chomp
    puts "Please enter expected days to finish"
    @time_frame = gets.chomp
    puts "Please enter any extra comments" if tradie.class != ""
    @comment = gets.chomp
    system "clear"
  end

  def update_file
    add_job
    file = File.open("#{@job_name}.txt", "w+")
    file.write("Job name: #{@job_name}\nLocation: #{@location}\nTime Frame: #{@time_frame}\nComment: #{@comment}")
    puts "Please confirm details entered:"
    file.rewind
    puts file.read
    file.close
  end

#   def update_comment
#     add_job
#     puts "Please enter Job Name you wish to update"
#     update_job = puts.chomp
# #open file
#     file = File.open("#{update_job}.txt", "r")
# #read file
#     file.read
# #update file
#     puts "Add changes now"
#     changes = gets.chomp
#     #save file
#
#
# #close file
#     contents = File.open("#{@job_name}.txt", "w")
#     contents.print account_balance
#
#   end

end


class Client < User
  def initialize
    super(name, password,email, address, phone)
  end

  def client_menu

  end
end

user1 = User.new("Northbad", "1234","","","")
user2 = Client.new("Southwell", "1234". "", "", "")


user = user1.log_in
user1.comoparelogin
# user.update_file
