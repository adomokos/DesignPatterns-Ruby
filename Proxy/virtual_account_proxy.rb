class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def deposit(amount)
    s = subject
    return s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    return s.withdraw(amount)
  end

  def balance
    s = subject
    return s.balance
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end

