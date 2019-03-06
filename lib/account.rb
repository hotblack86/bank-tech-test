require 'terminal-table'
require './lib/transaction.rb'
require './lib/statement.rb'

class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(transaction = Transaction.new(amount), statement = Statement.new)
    @balance += transaction.amount
    statement.transactions << [transaction.date, transaction.amount, "", @balance]
    p "You deposited £#{transaction.amount} on #{transaction.date}"
  end

  def withdraw(transaction = Transaction.new(amount), statement = Statement.new)
    @balance -= transaction.amount
    statement.transactions << [transaction.date, "", transaction.amount, @balance]
    p "You withdrew £#{transaction.amount} on #{transaction.date}"
  end

  def show_balance
    p "Available Funds: £#{@balance}"
  end

end
