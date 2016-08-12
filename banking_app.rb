require 'paint'
require 'Terminal-Table'

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

  attr_accessor :account_balance, :acc_number

  def login(customer)
    system "clear"
    puts "T-BANK"
    puts "Please Enter Your PIN"
    @pin = gets.chomp.to_i
      if @pin == customer.pin
        menu(customer)
      else
        puts "INCORRECT PIN"
        sleep(3)
        login(customer)
      end
    end

    def menu(customer)
      system "clear"
      table = Terminal::Table.new :title => "Welcome to the bank of TBag" do |t|
        
      puts "Balance   |   Withdraw"
      puts "Details   |   Deposit"

      selection = gets.chomp
      case selection
      when "Balance"
        account_balance
      when "Withdraw"
        system "clear"
        withdraw
      when "Details"
        details(customer)
      when "Deposit"
        deposit
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
      puts Paint["Zero Balance", :red]
    else
  #puts the balance to terminal
      print "Your balance is: $"
      puts Paint["#{account_balance}", :green]
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
    system "clear"
    if account_balance > withdraw_amount
      account_balance = account_balance - withdraw_amount
      print "You have withdrawn $#{withdraw_amount}.  You have $"
      print Paint["#{account_balance}", :green]
      puts " remaining"
    else
      puts Paint["Insufficient Funds", :red]
    end
    contents = File.open("account.txt", "w")
    contents.print account_balance
  end

  def deposit
    file = File.open("account.txt", "r")
    account_balance = file.read.to_i
    puts "How much would you like to deposit?"
    deposit_amount = gets.chomp.to_i
    system "clear"
    account_balance = account_balance + deposit_amount
    print "You have deposited $#{deposit_amount}.  You have $"
    print Paint["#{account_balance}", :green]
    puts " in your account."
    contents = File.open("account.txt", "w")
    contents.print account_balance
  end

  def details(customer)
    puts "Name: #{customer.name}"
    puts "Email: #{customer.email}"
    puts "Address: #{customer.address}"
    puts "Phone Number: #{customer.contact}"
  end

end


 user = Customer.new("Trit", "trit@stan",Bankaccount.new(100), "69 Neutral", "69696969", 1234)
  user.name
  user.account.login(user)
