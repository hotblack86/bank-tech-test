class Account

attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount, date = Time.now)
    @balance += amount
    p "You deposited £#{amount} on #{date}"
  end

  def withdraw(amount, date = Time.now)
    @balance -= amount
    p "You withdrew £#{amount} on #{date}"
  end

  def show_balance
    p "Available Funds: £#{@balance}"
  end
end