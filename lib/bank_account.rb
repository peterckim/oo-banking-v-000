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
    "Your balance is $#{@balance}."
  end
  
  def valid?
    (@balance > 0 && @status == "open") ? true : false
  end
end
