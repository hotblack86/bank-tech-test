require 'account.rb'
require 'transaction.rb'

require 'timecop'
require 'terminal-table'

describe Account do
  let(:date) { Timecop.freeze Date.new(2019, 2, 11) }
  let(:account) { Account.new }
  let(:transaction1) { Transaction.new(500, date.strftime("%d/%m/%Y")) }
  let(:transaction2) { Transaction.new(200, date.strftime("%d/%m/%Y")) }

  it 'Deposit method adds money to balance' do
    account.deposit(transaction1)
    expect(account.balance).to eq(500)
  end

  it 'Withdraw method subtracts money from balance' do
    account.deposit(transaction1)
    account.withdraw(transaction2)
    expect(account.balance).to eq(300)
  end
 
end
