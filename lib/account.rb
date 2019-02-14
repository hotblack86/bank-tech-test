require 'terminal-table'
require './lib/transaction.rb'

class Account

  attr_reader :balance, :transactions, :rows

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
    $data = @transactions
  end

  def deposit(transaction = Transaction.new)
    @balance += transaction.amount
    @transactions << [transaction.date, transaction.amount, "", @balance]
    p "You deposited £#{transaction.amount} on #{transaction.date}"
  end

  def withdraw(transaction = Transaction.new)
    @balance -= transaction.amount
    @transactions << [transaction.date, "", transaction.amount, @balance]
    p "You withdrew £#{transaction.amount} on #{transaction.date}"
  end

  def show_balance
    p "Available Funds: £#{@balance}"
  end

end
