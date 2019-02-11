class Account

attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    p "You deposited £#{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    p "You withdrew £#{amount}"
  end

  def show_balance
    p "Available Funds: £#{@balance}"
  end
end