class Account

attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    p "You deposited £#{amount}"
  end

  def show_balance
  end
end