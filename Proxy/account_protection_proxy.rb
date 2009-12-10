require 'etc'

=begin
# This is the long implementation
class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def balance
    check_access
    @subject.balance
  end

  def deposit(amount)
    check_access
    @subject.deposit(amount)
  end

  def withdraw(amount)
    check_access
    @subject.withdraw(amount)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end
=end

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      # raise "Illegal access: #{Etc.getlogin} cannot access account."
      raise "Illegal access: #{@owner_name} cannot access account."
    end
  end
end

