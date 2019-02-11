require 'terminal-table'

class Account

attr_reader :balance, :arr

  def initialize(balance = 0)
    @balance = balance
    @arr = []
  end

  def deposit(credit, date = Time.now)
    @balance += credit
    @arr << [date = Time.now, credit, "", balance = @balance]
    p "You deposited £#{credit} on #{date}"
  end

  def withdraw(debit, date = Time.now)
    @balance -= debit
    @arr << [date = Time.now, "", debit, balance = @balance]
    p "You withdrew £#{debit} on #{date}"
  end

  def show_balance
    p "Available Funds: £#{@balance}"
  end

  def print_statement
    rows = []
    @arr.reverse.each do |x|
      rows << x
    end
      table = Terminal::Table.new :title => "Statement",
      :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => rows
    puts table
  end
end