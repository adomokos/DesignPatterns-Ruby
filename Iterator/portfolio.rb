require 'account'

class Portfolio
  include Enumerable

  def initialize
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @accounts << account
  end
end

portfolio = Portfolio.new

portfolio.add_account(Account.new('attila_account', 1000))
portfolio.add_account(Account.new('john_doe_account', 400))
portfolio.add_account(Account.new('jane_doe_account', 340))

# check if any of the portfolio account's are greater than 2000
puts portfolio.any? { |account| account.balance > 2000 }

# check if all accounts have at least $10 in their balance
puts portfolio.all? { |account| account.balance >= 10 }

