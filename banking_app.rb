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

end

system "clear"
puts "Enter User Name"
user_name = gets.chomp.to_str
puts "Enter Email address"
user_email = gets.chomp.to_str
puts "Enter account number"
acc_number = gets.chomp.to_str
puts "Enter Address"
user_addr = gets.chomp.to_str
puts "Enter contact details"
user_contact = gets.chomp.to_str

bank_balance = 50

user = Customer.new(user_name, user_email, Bank_account.new(bank_balance),user_addr, user_contact)

user.account.balance

user.account.balance < 0 ? colour = :red : colour = :green
print "#{user_name} has $"
print Paint[user.account.balance, colour]
puts " in account: #{acc_number}"
