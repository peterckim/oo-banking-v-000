class Transfer
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def sender
    @sender
  end
  
  def receiver
    @receiver
  end
  
  def status
    @status
  end
  
  def amount
    @amount
  end
  
  def valid?
    (@sender.valid? && @receiver.valid?)
  end
  
  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
  end
  
  def reverse_transfer
    
  end
  
end
