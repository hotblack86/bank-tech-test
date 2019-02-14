require 'terminal-table'
require './lib/transaction.rb'

class Account

  attr_reader :balance, :transactions, :rows

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
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

  def print_statement
    order_transactions
    table = Terminal::Table.new :title => "Statement",
    :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => @rows
    puts table
  end

  private

  def order_transactions
    @rows = []
    @transactions.reverse.each do |x|
      @rows << x
    end
    return @rows
  end

end
