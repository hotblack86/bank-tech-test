require 'account.rb'
require 'transaction.rb'
require 'statement.rb'
require 'timecop'
require 'terminal-table'

describe Statement do
  let(:date) { Timecop.freeze Date.new(2019, 2, 11) }
  let(:account) { Account.new }
  let(:transaction1) { Transaction.new(500, date.strftime("%d/%m/%Y")) }
  let(:transaction2) { Transaction.new(200, date.strftime("%d/%m/%Y")) }
  let(:statement) { Statement.new }

  it 'Initializes with an array of transactions' do
    expect(statement.transactions.length).to eq(2)
  end

  it 'Orders transactions in reverse chronological order' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    statement.print_statement
    expect(statement.rows[0]).to eq(["11/02/2019", "", 200, 300])
    expect(statement.rows[1]).to eq(["11/02/2019", 500, "", 500])
  end

end
