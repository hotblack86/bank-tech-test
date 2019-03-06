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

  it 'Initializes with an empty array of transactions' do
    expect(statement.transactions.length).to eq(0)
  end

  it 'Adds transactions to the list of transactions' do
    account.deposit(transaction1, statement)
    account.withdraw(transaction2, statement)
    expect(statement.transactions[0]).to eq(["11/02/2019", 500, "", 500])
    expect(statement.transactions[1]).to eq(["11/02/2019", "", 200, 300])
  end

  it 'Orders transactions in reverse chronological order' do
    account.deposit(transaction1, statement)
    account.withdraw(transaction2, statement)
    statement.print_statement
    expect(statement.rows[0]).to eq(["11/02/2019", "", 200, 300])
    expect(statement.rows[1]).to eq(["11/02/2019", 500, "", 500])
  end

end
