# Ben asked Alyssa to code review the following code:

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# Alyssa glanced over the code quickly and said - "It looks fine, except that
# you forgot to put the @ before balance when you refer to the balance instance
# variable in the body of the positive_balance? method."
#
# "Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing
# an @!"
#
# Who is right, Ben or Alyssa, and why?
# Ben is correct. He has set an attr_reader for the balance instance variable
# which means Ruby will automatically create a method called balance that
# returns the value of the @balance instance variable.

my_account = BankAccount.new(100)

puts my_account.positive_balance?
