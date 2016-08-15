
class User
  def initialize(name, password,email, address, phone)
    @name = name
    @email = email
    @address = address
    @phone = phone
    @password = password
  end
  attr_accessor :name,:password, :email, :address, :phone
    def self.all
      ObjectSpace.each_object(self).to_a
    end
# menu to access methods below
#eg add job, update job, view jobs, client log in

end

class Employee < User
  def initialize(name, password, email, address, phone)
    super(name, password, email, address, phone)
  end

  def employee_menu
    puts "Please choose your option below"
    puts "Add Job, Update Job"
    menu_select = gets.chomp
    if menu_select == "Add Job"
      save_file
    elsif menu_select == "Update Job"
      update_file
    elsif menu_select == "Add comment"
      update_comment
    elsif menu_select == "View Timeframe"
      view_timeframe
    else
      puts "Try again"
    end
  end

  def add_job()
    puts "Please enter job name (customers last name)"
    @job_name = gets.chomp
    puts "Please enter clients surname"
    @client_name = gets.chomp
    puts "Please enter job location"
    @location = gets.chomp
    puts "Please enter expected days to finish"
    @time_frame = gets.chomp
    puts "Please enter any extra comments"
    @comment = gets.chomp
    system "clear"
  end

  def save_file
    add_job
    file = File.open("#{@job_name}.txt", "w+")
    file.write("Job name: #{@job_name}\n Client Surname: #{@client_name}\nLocation: #{@location}\nTime Frame: #{@time_frame}\nComment: #{@comment}")
    puts "You have entered the following:"
    file.rewind
    puts file.read
    sleep(5)
    system "clear"
    employee_menu
  end

  def update_file
    add_job
    file = File.open("#{@job_name}.txt", "w+")
    file.write("Job name: #{@job_name}\n Client Surname: #{@client_name}\nLocation: #{@location}\nTime Frame: #{@time_frame}\nComment: #{@comment}")
    puts "You have entered details as follows:"
    file.rewind
    puts file.read
    sleep(5)
    system "clear"
    file.close
    employee_menu
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
# #close file
#     contents = File.open("#{@job_name}.txt", "w")
#     contents.print account_balance
#
#   end
#
#   def view_timeframe
#   end

end


class Client < User
  def initialize
    super(name, password, email, address, phone)
  end

  def client_menu
    puts "Hi #{@name}!! Please type Y to continue to your job"
    confirm = gets.chomp
    if confirm == "Y" || "y"
      client_check
    else
      puts "Try again."
  end

  def client_check
    puts "Hi #{@name} any comments about your job will be displayed below"
    file = File.open("#{@job_name}.txt")

end
