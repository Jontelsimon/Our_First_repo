puts "Hello Universe"

puts "made a change"
input = gets.chomp
puts input.reverse

class Account

	attr_accessor :name
	attr_reader :account_number

	def initialize(name, account_number, balance)
		@name = name
		@account_number = account_number
		@balance = balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		if amount > @balance
			return false
		else
			@balance -= amount
			return true
	end
end

end
#end of Account Class
#beginning of Main Menu

def main_menu

	if @count < 3

	puts "Welcome to The Bank"
	puts "Please select action from the following menu options:"
	puts "-----------------------------------------------------"
	puts "1. Add an account"
	puts "2. View existing acocunt"
	puts "3. Exit Menu"


	option = gets.chomp.to_i # User Choice
	if option == 1 
		@count = 0 #resetting the count
		add_account #calling the method
	elsif option == 2
		@count = 0 #resetting the count
		view_account #calling 
	elsif option == 3
		puts "Thank you for visiting The Bank"
		exit
	else
			if @account != (1..3)
				puts "invalid selection. Try Again."
			end
			@count += 1
			main_menu
		end

	else 
		puts "You seem to be having trouble. Contact Customer Service."
		exit
	end

end
#End Main Menu
#Begin Add Account
def add_account
	system('clear')
	puts "Please enter an account name for the account holder:"
	name = gets.chomp.upcase
	puts "Enter a starting balance:"
	balance = gets.chomp.to_f
	account_number = @accounts.length

	new_account = Account.new(name, account_number, balance)

	@accounts.push(new_account)
	system('clear')
	puts "Account Successfully Created"
	puts "Name: #{new_account.name}"
	puts "Account #: #{new_account.account_number}"
	puts "Balance: $#{'%.2f'%(new_account.balance)}" #Purple code keeps it to two decimal places


end
#End Add Account
#Program
@count = 0
@accounts = []
main_menu
