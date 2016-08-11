require 'paint'

class Customer
  def initialize(name, email, account, address, contact, pin)
    @name = name
    @email = email
    @account = account
    @address = address
    @contact = contact
    @pin = pin
  end

  attr_accessor :name, :email, :account, :address, :contact, :pin

end

class Bankaccount < Customer
  def initialize(account_balance)
    super(name, email, account, address, contact, pin)
    @account_balance = account_balance
  end

  attr_accessor :account_balance, :acc_number, :pin

  def login(customer)
    system "clear"
    puts "T-BANK"
    puts "Please Enter Your PIN"
    @pin = gets.chomp.to_i
      if @pin == customer.pin
        menu
      else
        puts "INCORRECT PIN"
        sleep(3)
        login
      end
    end

    def menu
      system "clear"
      puts "Welcome to the bank of T-Bag"
      puts "Balance   |   Withdraw"
      puts "Details   |   Deposit"
      #puts "QUIT"

      selection = gets.chomp
      case selection
      when "b"
        account_balance
      when "w"
        withdraw
      when "Details"
        details
      when "Deposit"
        deposit
#      when "QUIT"
#        quit
      else
        puts "Try Again"
        sleep(1)
      end
    end

  def account_balance
    system "clear"
  # opens .txt file
    file = File.open("account.txt", "r")
  # sets the variable fuel to the value stored in the .txt file
    account_balance = file.read.to_i
  # if statement to see if funds exist
    if account_balance < 1
      puts "Zero Balance"
    else
  #puts the balance to terminal
      puts "#{account_balance}"
    end
  # Overwrites .txt file with updated figure
    contents = File.open("account.txt", "w")
    contents.puts account_balance
  end

  def withdraw
    file = File.open("account.txt", "r")
    account_balance = file.read.to_i
    puts "How much would you like to withdraw?"
    withdraw_amount = gets.chomp.to_i
    if account_balance > withdraw_amount
      account_balance = account_balance - withdraw_amount
      puts "You have withdrawn $#{withdraw_amount}.  You have $#{account_balance} remaining."
    else
      puts "Insufficient Funds"
    end
    contents = File.open("account.txt", "r")
    contents.puts account_balance
  end

end


user = Customer.new("Trit", "trit@stan",Bankaccount.new(100), "69 Neutral", "69696969", 1234)
 user.name
 user.account.login(user)



#  system "clear"
#  puts "Enter User Name"
#  user_name = gets.chomp.to_str
#  puts "Enter Email address"
#  user_email = gets.chomp.to_str
#  #puts "Enter account number"
#  #acc_number = gets.chomp.to_str
#  puts "Enter Address"
#  user_addr = gets.chomp.to_str
#  puts "Enter contact details"
#  user_contact = gets.chomp.to_str
#  system "clear"
#
#
# user = Customer.new(user_name, user_email, Bank_account.new(500),user_addr, user_contact, pin)

#puts user.account.account_balance(user.account.balance)


#  user.account.account_balance(user.account.balance) < 0 ? colour = :red : colour = :green
#  print "#{user_name} has $"
#  print Paint[user.account.account_balance(user.account.balance), colour]
  #  puts " in account: #{acc_number}"
