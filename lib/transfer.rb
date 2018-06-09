class Transfer
  
  @@last_transfer == nil
  
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
    if self.valid? == false || @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      if @status == "pending" && self.valid?
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
        @@last_transfer = self
      else
        
      end
    end
  end
  
  def reverse_transfer
    last_sender = @@last_transfer.sender
    last_receiver = @@last_transfer.receiver
    last_amount = @@last_transfer.amount
    last_status = @@last_transfer.status
  end
  
end
