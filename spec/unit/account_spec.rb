require 'account.rb'
require 'transaction.rb'

require 'timecop'
require 'terminal-table'

describe Account do
  let(:date) { Timecop.freeze Date.new(2019, 2, 11) }
  let(:account) { Account.new }
  let(:transaction1) { Transaction.new(500, date.strftime("%d/%m/%Y")) }
  let(:transaction2) { Transaction.new(200, date.strftime("%d/%m/%Y")) }
  

  it 'Initializes with a balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'Initializes with no transactions' do
    expect(account.transactions).to eq([])
  end

  it 'Deposit method adds money to balance' do
    account.deposit(transaction1)
    expect(account.balance).to eq(500)
  end

  it 'Withdraw method subtracts money from balance' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    expect(account.balance).to eq(300)
  end

  it 'Adds transactions to array' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    expect(account.transactions[0]).to eq(["11/02/2019", 500, "", 500])
    expect(account.transactions[1]).to eq(["11/02/2019", "", 200, 300])
  end

  it 'Orders transactions in reverse chronological order' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    account.print_statement
    expect(account.rows[0]).to eq(["11/02/2019", "", 200, 300])
    expect(account.rows[1]).to eq(["11/02/2019", 500, "", 500])
  end
end
