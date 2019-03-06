require 'terminal-table'
require './lib/transaction.rb'
require './lib/account.rb'

class Statement

  attr_reader :transactions, :rows

  def initialize
    @transactions = []
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
