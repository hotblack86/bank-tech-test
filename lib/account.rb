require 'terminal-table'

class Account

  attr_reader :balance, :transactions, :rows

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(credit, date = Time.now)
    @balance += credit
    @transactions << [date, credit, "", @balance]
    p "You deposited £#{credit} on #{date}"
  end

  def withdraw(debit, date = Time.now)
    @balance -= debit
    @transactions << [date, "", debit, @balance]
    p "You withdrew £#{debit} on #{date}"
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
