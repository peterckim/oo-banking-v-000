class BankAccount
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def name
    @name
  end
  
  def balance
    @balance
  end
  
  def status
    @status
  end
  
  def deposit(deposit_amount)
    @balance += deposit_amount
  end
  
  def display_balance
    
  end
end
