require 'bank_account'
require 'bank_account_proxy'
require 'account_protection_proxy'
require 'virtual_account_proxy'
require 'universal_account_proxy'

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)

auth_proxy = AccountProtectionProxy.new(account, 'attila')
auth_proxy.deposit(50)
auth_proxy.withdraw(10)

puts "The balance for account is #{auth_proxy.balance}"

# Try the virtual proxy
account = VirtualAccountProxy.new { BankAccount.new(10) }

generic_proxy = UniversalAccountProxy.new(BankAccount.new(100))
generic_proxy.deposit(25)
generic_proxy.withdraw(50)
puts("Account balance is now: #{generic_proxy.balance}")

# Try the account_protection_proxy with method_missing
s = AccountProtectionProxy.new("a simple string", 'attila')
puts("The length of the string is #{s.length}")

s = AccountProtectionProxy.new("a simple string", 'fred')
puts("The length of the string is #{s.length}")

