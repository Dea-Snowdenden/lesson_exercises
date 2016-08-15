require 'Mail'

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

end

class Employee < User
  def initialize(name, password, email, address, phone)
    super(name, password, email, address, phone)
  end

  def employee_menu
    puts "Please choose your option below"
    puts "Add Job, Update Job, Add Comment, Send Email"
    menu_select = gets.chomp
    if menu_select == "Add Job"
      save_file
    elsif menu_select == "Update Job"
      update_file
    elsif menu_select == "Add Comment"
      update_comment
    elsif menu_select == "View Timeframe"
      view_timeframe
    elsif menu_select == "Send Email"
      send_email
    else
      puts "Try again"
    end
  end

  def add_job()
    puts "Please enter job name"
    @job_name = gets.chomp
    puts "Please enter job number"
    @job_number = gets.chomp
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
    file = File.open("#{@job_number}.txt", "w+")
    file.write("Job name: #{@job_name}\nClient Surname: #{@client_name}\nLocation: #{@location}\nTime Frame: #{@time_frame}\nComment: #{@comment}")
    puts "You have entered the following:"
    file.rewind
    puts file.read
    sleep(5)
    system "clear"
    employee_menu
  end

  def update_file
    puts "Please enter job number"
    job_number = gets.chomp
    file1 = File.open("#{@job_number}.txt", "r")
    file1.rewind
    puts file1.read
    add_job
    file = File.open("#{@job_number}.txt", "w+")
    file.write("Job name: #{@job_name}\nClient Surname: #{@client_name}\nLocation: #{@location}\nTime Frame: #{@time_frame}\nComment: #{@comment}")
    puts "You have entered details as follows:"
    file.rewind
    puts file.read
    sleep(5)
    system "clear"
    file.close
    employee_menu
  end

  def update_comment
    puts "Enter job number"
    job = gets.chomp
    puts "Enter comment"
    comment = gets.chomp
    open("#{job}.txt", 'a') { |f|
    f.print "comment: #{comment}"
    }
  end

  # def write_email
  #   puts "Write email subject below"
  #   @subject = gets.chomp
  #   puts "Write email below"
  #   email = gets.chomp
  #   file = File.open("#{@subject}.txt", "w+")
  #   file.write(email)
  # end

  # def get_cust_email
  #   puts "Enter customer name"
  #   cust_email = gets.chomp
  # end

  def send_email
    mail = Mail.new do
      from     "anunsentletter@gmail.com"
      to       'tristan.southwell@hotmail.com'
      subject  "test"
      body     File.read("test.txt")
  end

  mail.delivery_method :sendmail

  mail.deliver

  end

#   def view_timeframe
#   end

end

class Client < User
  def initialize(name, password, email, address, phone)
    super(name, password, email, address, phone)
  end

  def client_menu
    puts "Hi #{@name}!! Please type your job number to continue to your job"
    @confirm = gets.chomp
    system "clear"
    client_check
  end

  def client_check
    puts "Hi #{@name}. Any comments about your job will be displayed below"
    file = IO.readlines("#{@confirm}.txt")[4..-1]
    puts file
  end

end
