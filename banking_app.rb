require 'paint'

class Customer
  def initialize(name, email, account, address, contact)
    @name = name
    @email = email
    @account = account
    @address = address
    @contact = contact
  end

  attr_accessor :name, :email, :account, :address, :contact

end

class Bank_account < Customer
  def initialize(balance)
    @balance = balance
  end

  attr_accessor :balance, :acc_number

  def login
    system "clear"
    


  def account_balance(acc_balance)
  # opens .txt file
    file = File.open("account.txt", "r")
    contents = file.read
  # sets the variable fuel to the value stored in the .txt file
    acc_balance = contents.to_i
  # shows balance
    puts acc_balance
  # if statement to see if funds exist
    if acc_balance < 1
      puts "Zero Balance"
    else
  #puts the balance to terminal
      puts "#{acc_balance}"
    end

  # Overwrites .txt file with updated figure
    contents = File.open("account.txt", "w")
    contents.puts acc_balance
  end

  def withdraw(withdraw)
    file = File.open("account.txt", "r")
    contents = file.read
    acc_balance = contents.to_i
    puts "How much would you like to withdraw?"
    withdraw_amount = gets.chomp
    if acc_balance > withdraw_amount
      acc_balance = acc_balance - withdraw_amount
      puts "You have withdrawn $#{withdraw_amount}.  You have $#{acc_balance} remaining."
    else
      puts "Insufficient Funds"
    end
    contents = File.open("account.txt", "r")
    contents.puts acc_balance
  end

end

system "clear"
puts "Enter User Name"
user_name = gets.chomp.to_str
puts "Enter Email address"
user_email = gets.chomp.to_str
#puts "Enter account number"
#acc_number = gets.chomp.to_str
puts "Enter Address"
user_addr = gets.chomp.to_str
puts "Enter contact details"
user_contact = gets.chomp.to_str
system "clear"


user = Customer.new(user_name, user_email, Bank_account.new(500),user_addr, user_contact)

puts user.account.account_balance(user.account.balance)


#  user.account.account_balance(user.account.balance) < 0 ? colour = :red : colour = :green
#  print "#{user_name} has $"
#  print Paint[user.account.account_balance(user.account.balance), colour]
  #  puts " in account: #{acc_number}"
